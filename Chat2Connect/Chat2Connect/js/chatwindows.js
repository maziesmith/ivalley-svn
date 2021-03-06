﻿
ko.onDemandObservable = function (callback, target) {
    var _value = ko.observable();  //private observable

    var result = ko.dependentObservable({
        read: function () {
            //if it has not been loaded, execute the supplied function
            if (!result.loaded()) {
                callback.call(target);
            }
            //always return the current value
            return _value();
        },
        write: function (newValue) {
            //indicate that the value is now loaded and set it
            result.loaded(true);
            _value(newValue);
        },
        deferEvaluation: true  //do not evaluate immediately when created
    });

    //expose the current state, which can be bound against
    result.loaded = ko.observable();
    //load it again
    result.refresh = function () {
        result.loaded(false);
    };

    return result;
};
ko.bindingHandlers.slideVisible = {
    init: function (element, valueAccessor) {
        var value = valueAccessor();
        $(element).toggle(ko.unwrap(value));
    },
    update: function (element, valueAccessor) {
        var value = valueAccessor();
        ko.unwrap(value) ? $(element).slideDown(700) : $(element).slideUp(700);
    }
};

ko.bindingHandlers.date = {
    update: function (element, valueAccessor, allBindingsAccessor, viewModel) {
        var value = valueAccessor();
        var allBindings = allBindingsAccessor();
        var valueUnwrapped = ko.utils.unwrapObservable(value);
        var pattern = allBindings.format || 'DD/MM/YYYY';
        var output = "-";
        if (valueUnwrapped !== null && valueUnwrapped !== undefined && valueUnwrapped.length > 0) {
            output = moment(valueUnwrapped).format(pattern);
        }

        if ($(element).is("input") === true) {
            $(element).val(output);
        } else {
            $(element).text(output);
        }
    }
};
function Chat(maxWin, memberID, memberName, profilePic, memberType) {
    var self = this;
    self.CurrentMemberID = memberID;
    self.CurrentMemberName = memberName;
    self.CurrentMemberPic = profilePic;
    self.CurrentMemberType = memberType;
    self.CreditPoints = ko.observable($("#uiHiddenFieldCreditPoints").val());
    self.maxRoom = ko.observable(maxWin);
    self.windows = ko.observableArray();
    // total opened cams for account 
    self.MaxCams = 2;
    if (memberType > 1)
        self.MaxCams = 8;

    self.TotalOpenedCams = 0;
    
    self.notTempRoom = ko.computed(function () {
        return ko.utils.arrayFilter(self.windows(), function (win) {
            return win.IsTemp() == false && win.Type() == "Room";
        });
    }, self);
    self.allRooms = ko.computed(function () {
        return ko.utils.arrayFilter(self.windows(), function (win) {
            return win.Type() == "Room";
        });
    }, self);
    self.getWindow = function (id, type, name, typeSpec, iscreator, friendPic, isfriend) {
        var window = ko.utils.arrayFirst(self.windows(), function (win) {
            return win.ID() == id && win.Type() == type;
        });

        if (window == null) {
            if (type == "Private") {
                if (isfriend == undefined) {
                    var myfriend = ko.utils.arrayFirst(self.friends(), function (fr) {
                        return fr.MemberID() == id;
                    });
                    isfriend = (myfriend != null);
                }
                chatVM.addWindow(id, name, type, false, false, 0, isfriend, false, typeSpec, iscreator);

                window = chatVM.getWindow(id, type);
                window.Settings.TypeID(typeSpec);
                window.Members()[1].ProfileImg(friendPic);
                if (!iscreator || iscreator == undefined) {
                    $('#AduioNotification_' + window.uniqueID()).html('<audio autoplay><source src="files/sounds/invite.wav"></audio>');
                }


            }
        }

        return window;
    }

    self.getWindowByUniqueID = function (uniqueID, type) {
        var window = ko.utils.arrayFirst(self.windows(), function (win) {
            return win.uniqueID() == uniqueID && win.Type() == type;
        });

        return window;
    }
    //
    //Help Members
    this.getHelpMembers = function () {
        $.post("../services/chat2connect.asmx/GetHelpMembers", { mid: this.memberID })
                .done(function (data) {
                    var lst = [];
                    ko.utils.arrayMap(data, function (item) {
                        lst.push(ko.mapping.fromJS(item));
                    });
                    self.helpMembers(lst);
                });
    };
    this.helpMembers = ko.onDemandObservable(this.getHelpMembers, this);
    this.onlineHelpMembers = ko.computed(function () {
        if (this.helpMembers() == undefined)
            return [];
        return ko.utils.arrayFilter(this.helpMembers(), function (help) {
            return help.IsOnline() && help.Status() != 'offline'; //not invisible
        });
    }, this);
    this.offlineHelpMembers = ko.computed(function () {
        if (this.helpMembers() == undefined)
            return [];
        return ko.utils.arrayFilter(this.helpMembers(), function (help) {
            return !help.IsOnline() || help.Status() == 'offline'; //invisible;
        });
    }, this);
    //Friends
    this.getBlockedMembers = function () {
        $.get("../services/chat2connect.asmx/GetBlockedMembers")
                .done(function (data) {
                    var lst = [];
                    ko.utils.arrayMap(data, function (item) {
                        lst.push(ko.mapping.fromJS(item));
                    });
                    self.blockedMembers(lst);
                    //init tooltip
                    $('.blocktip').tooltip();
                });
    };
    this.blockedMembers = ko.onDemandObservable(this.getBlockedMembers, this);
    this.isBlocked = function (mid) {
        var blocked = this.blockedMembers();
        if (blocked == undefined)
            return false;
        return ko.utils.arrayFirst(this.blockedMembers(), function (m) {
            return m.MemberID() == mid;
        });
    }
    self.toggleBlockMember = function (mid, block) {
        if (block) {
            $('#usernode-' + mid).popover('hide');
        }
        $.ajax({
            url: '../Services/chat2connect.asmx/toggleBlockMember',
            type: 'GET',
            data: { mid: mid, block: block },
            success: function (result) {
                if (block) {
                    notify('success', 'تم حظر الصديق بنجاح');
                    var lst = self.blockedMembers();
                    var newItem = ko.mapping.fromJS(result);
                    lst.push(newItem);
                    self.blockedMembers(lst);
                }
                else {
                    notify('success', 'تم إلغاء حظر الصديق بنجاح');
                    var newlst = ko.utils.arrayFilter(self.blockedMembers(), function (f) {
                        return f.MemberID() != mid;
                    });
                    self.blockedMembers(newlst);
                }

                $('.blocktip').tooltip();
            }
        });
    };

    this.getBlockingMeMembers = function () {
        $.get("../services/chat2connect.asmx/GetBlockingMeMembers")
                .done(function (data) {
                    var lst = [];
                    ko.utils.arrayMap(data, function (item) {
                        lst.push(ko.mapping.fromJS(item));
                    });
                    self.blockingMeMembers(lst);
                });
    };
    this.blockingMeMembers = ko.onDemandObservable(this.getBlockingMeMembers, this);
    this.isBlockingMe = function (mid) {
        var blocked = this.blockingMeMembers();
        if (blocked == undefined)
            return false;
        return ko.utils.arrayFirst(this.blockingMeMembers(), function (m) {
            return m.MemberID() == mid;
        });
    }
    this.getFriends = function () {
        $.ajax({
            url: "../services/chat2connect.asmx/GetFriends",
            data:{ mid: this.CurrentMemberID },
            context: this,
            async:true
        }).done(function (data) {

            var lst = [];
            ko.utils.arrayMap(data, function (item) {
                lst.push(ko.mapping.fromJS(item));
            });
            self.friends(lst);
            //initPopupMenu();
            // init link in friends menu 
            $('.openGiftModal').click(function () {
                $('#GeneralGiftModal').modal('show');
                $('#GeneralGiftModal input.checkboxes').each(function () {
                    $(this).attr('checked', false);
                });
                $('#GeneralGiftModal input.checkboxes[value="' + $(this).attr('data-mid') + '"]').attr('checked', 'checked');
            });

            // init send btn 
            $('#btnGeneralSendGift').unbind('click');
            $('#btnGeneralSendGift').bind('click', function () { sendGeneralGift(); });

            // init select gift
            $('#GeneralGiftUL .GiftLabel').click(function () {
                generalSelectedGift = $(this);
                $('#GeneralGiftUL').find('label').removeClass('selected');
                $('#GeneralGiftUL' + ' #gift_' + generalSelectedGift.attr('data-giftid')).next('label').addClass('selected');
            });
        });
    };
    this.friends = ko.onDemandObservable(this.getFriends, this);
    this.onlineFriends = ko.computed(function () {
        if (this.friends() == undefined)
            return [];
        return ko.utils.arrayFilter(this.friends(), function (f) {
            return f.IsOnline() && f.Status() != 'offline' && !self.isBlocked(f.MemberID()) && !self.isBlockingMe(f.MemberID());
        });
    }, this);
    this.offlineFriends = ko.computed(function () {
        if (this.friends() == undefined)
            return [];
        return ko.utils.arrayFilter(this.friends(), function (f) {
            return (!f.IsOnline() || f.Status() == 'offline' || self.isBlockingMe(f.MemberID())) && !self.isBlocked(f.MemberID())
        });
    }, this);
    self.AllOnlineFriendsSelected = ko.observable(false);
    self.selectAllOnlineFriendsToInvite = function () {
        var newValue = !self.AllOnlineFriendsSelected();
        ko.utils.arrayForEach(self.onlineFriends(), function (friend) {
            friend.IsSelected(newValue);
        });
        return true;
    };
    self.selectOnlineFriendToInvite = function () {
        var isAllSelected = true;
        ko.utils.arrayForEach(self.onlineFriends(), function (friend) {
            if (!friend.IsSelected())
                isAllSelected = false;
        });
        self.AllOnlineFriendsSelected(isAllSelected);
        return true;
    };

    this.removeFriend = function () {
        var friend = this;
        var newlst = ko.utils.arrayFilter(self.friends(), function (f) {
            return f.MemberID() != friend.MemberID();
        });
        self.friends(newlst);
        removeFriend(self.CurrentMemberID, friend.MemberID());
    };

    var mapping = {
        '': {
            create: function (options) {
                return new windowModel(options.data);
            }
        }
    }
    var windowModel = function (data) {
        ko.mapping.fromJS(data, {}, this);
        var self = this;

        this.uniqueID = ko.computed(function () {
            if (this.Type() == 'Private') {
                // generated id for private chat
                var newroomid = (this.ID() < this.CurrentMemberID()) ? this.ID() + "_" + this.CurrentMemberID() : this.CurrentMemberID() + "_" + this.ID();
                return this.Type() + '_' + newroomid;
            }
            return this.Type() + '_' + this.ID();
        }, this);

        this.IsMuted = ko.observable(false);;

        this.Editor = null;
        this.AdminsEditor = null;
        this.selectedGift = null;
        this.IsActive = false;
        // default editor styles
        this.IsBold = ko.observable(false);
        this.IsItalic = ko.observable(false);
        this.FontSize = ko.observable('meduim');
        this.ForeColor = ko.observable('black');
        this.toggleBold = function () {
            self.IsBold(!self.IsBold());
            self.saveEditorSetting();
        };
        this.toggleItalic = function () {
            self.IsItalic(!self.IsItalic());
            self.saveEditorSetting();
        };
        this.setFontSize = function (fontsize) {
            self.FontSize(fontsize);
            self.saveEditorSetting();
        };
        this.setForeColor = function (color) {
            self.ForeColor(color);
            self.saveEditorSetting();
        };

        this.getMember = function (id) {
            return ko.utils.arrayFirst(self.Members(), function (mem) {
                return mem.MemberID() == id;
            });
        }
        //Existing Members
        this.ExistingMembers = ko.computed(function () {
            /*if (self.Type() == 'Private')
                return null;*/
            return ko.utils.arrayFilter(self.Members(), function (mem) {
                return mem.InRoom();
            })
        }, this);
        //Room Members
        this.RoomMembers = ko.computed(function () {
            return ko.utils.arrayFilter(self.ExistingMembers(), function (mem) {
                return (mem.QueueOrder() == null && mem.IsMicOpened() != true && mem.IsCamOpened() != true);
            });
        }, this);
        this.ExistingMembersWithCustomOrder = ko.computed(function () {
            var onlineMembers = ko.utils.arrayFilter(self.Members(), function (mem) {
                return mem.InRoom();
            });
            return onlineMembers.sort(function (a, b) {
                if (a.IsMicOpened() != b.IsMicOpened()) {
                    return a.IsMicOpened() ? -1 : 1;
                }
                if (a.IsCamOpened() != b.IsCamOpened()) {
                    return a.IsCamOpened() ? -1 : 1;
                }
                if (a.QueueOrder() != null && b.QueueOrder() != null) {
                    return a.QueueOrder() - b.QueueOrder();
                }
                if (a.QueueOrder() != b.QueueOrder()) {
                    return a.QueueOrder() != null ? -1 : 1;
                }
                if (a.MemberLevelID() == 4 || b.MemberLevelID() == 4) {
                    return a.MemberLevelID() == 4 ? -1 : 1;
                }
                if (a.HasGift() != b.HasGift()) {
                    return a.HasGift() ? -1 : 1;
                }
                return b.LastJoinDate() > a.LastJoinDate(); // descending
            });
        }, this);
        
        //Cams only Member
        this.CamOnlyMembers = ko.computed(function () {
            return ko.utils.arrayFilter(self.ExistingMembers(), function (mem) {
                return (mem.IsCamOpened() == true && (mem.QueueOrder() < 0 || mem.QueueOrder() == null) && mem.IsMicOpened() != true);
            });
        }, this);
        //Queue Members
        this.QueueMembers = ko.computed(function () {
            return ko.utils.arrayFilter(self.ExistingMembers(), function (mem) {
                return (mem.QueueOrder() != null);
            }).slice().sort(function (a, b) {
                return a.QueueOrder() > b.QueueOrder() ? 1 : -1;
            });
        }, this);
        //Admin Members
        this.AdminMembers = ko.computed(function () {
            return ko.utils.arrayFilter(self.ExistingMembers(), function (mem) {
                return (mem.MemberLevelID() > 1);
            });
        }, this);
        //Current member
        this.CurrentMember = ko.computed(function () {
            return self.getMember(self.CurrentMemberID());
        }, this);
        //Owner
        this.OwnerMember = ko.computed(function () {
            if (self.Type() == 'Private')
                return null;
            return self.getMember(self.CreatedBy());
        }, this);
        //MicMember
        this.MicMember = ko.computed(function () {
            return ko.utils.arrayFirst(self.ExistingMembers(), function (mem) {
                return mem.IsMicOpened()==true;
            });
        }, this);
        // openedCams
        this.OpenedCams = ko.computed(function () {
            return ko.utils.arrayFilter(self.ExistingMembers(), function (mem) {
                return mem.IsCamOpened();
            });
        }, this);

        this.updateSetting = function (settingName) {
            var window = this;
            var newValue = !window.CurrentMember()[settingName]();
            window.CurrentMember()[settingName](newValue);
            if (self.Type() == "Room") {
                $.ajax({
                    url: '../Services/Services.asmx/UpdateRoomMemberSetting',
                    dataType: 'json',
                    type: 'post',
                    data: "{'mid':" + self.CurrentMember().MemberID() + ", 'rid' : " + window.ID() + ",'setting':'" + settingName + "','newValue':" + newValue + " }",
                    contentType: 'application/json; charset=utf-8',
                    success: function (data) {
                        notify('success', 'تم تغيير الإعدادات بنجاح');
                        return;
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        notify('error', 'حدث خطأ . من فضلك أعد المحاولة');
                    }
                });
            }
            else {
                notify('success', 'تم تغيير الإعدادات بنجاح');
            }
            return true;
        }

        //member menu
        this.toggleFriend = function (window, friend) {
            var mid = window.CurrentMember().MemberID();
            var fid = friend.MemberID();
            var isFriend = friend.IsFriend();
            windowmember = window.getMember(friend.MemberID());
            windowmember.IsFriend(!isFriend);
            $.ajax({
                url: '../Services/Services.asmx/AddRemoveFriend',
                type: 'GET',
                data: { mid: mid, fid: fid, isFriend: isFriend },
                success: function (result) {
                    if (result != '') {
                        //add friend
                        var lst = chatVM.friends();
                        var newFriend = ko.mapping.fromJS(result);
                        lst.push(newFriend);
                        chatVM.friends(lst);
                        //initPopupMenu();
                    }
                    else {//remove friend
                        var newlst = ko.utils.arrayFilter(chatVM.friends(), function (f) {
                            return f.MemberID() != friend.MemberID();
                        });
                        chatVM.friends(newlst);
                    }
                }
            });
        };
        this.toggleMark = function (window, friend) {
            var newvalue = !friend.IsMarked();
            friend.IsMarked(newvalue);
            friend.CanWrite(newvalue);
            rHub.server.toggleUserMark(window.ID(), newvalue, friend.MemberID());
            if (!newvalue) {
                window.stopMic(friend.MemberID());
            }
        };

        this.SelectedMember = ko.observable(this.CurrentMember());
        this.showRoomMemberLevelsPopup = function (mid) {
            var member = self.getMember(mid);
            if (member == null)
                return;
            self.SelectedMember(member);
            $("#changeLevelModal_" + self.uniqueID()).modal('show');
        };
        this.updateMemberLevel = function () {
            var window = this;
            rHub.server.updateMemberLevel(window.ID(), self.SelectedMember().MemberID(), self.SelectedMember().MemberLevelID());
            $("#changeLevelModal_" + self.uniqueID()).modal('hide');
            return true;
        };
        this.HamsaText = ko.observable();
        this.showSendHamsa = function (member) {
            self.SelectedMember(member);
            $("#sendHamsaModal_" + self.uniqueID()).modal('show');
        };
        this.sendHamsa = function () {
            rHub.server.sendHamsa(self.ID(), self.SelectedMember().MemberID(), self.HamsaText(), self.CurrentMember().MemberName());
            $("#sendHamsaModal_" + self.uniqueID()).modal('hide');
            self.HamsaText("");
            return true;
        };
        //control panel
        this.bannedMember = ko.observable();
        this.banMember = function (id) {
            var member = self.getMember(id);
            if (member == null)
                return;
            self.bannedMember(member);
            $("#banModal_" + self.uniqueID()).modal('show');
        };
        this.saveBanMember = function () {
            var window = this;
            $.ajax({
                url: '../Services/Services.asmx/BanRoomMember',
                dataType: 'json',
                type: 'post',
                data: "{'memberID':" + window.bannedMember().MemberID() + ", 'roomID' : " + window.ID() + ",'type':'" + window.bannedType() + "','adminID':" + chatVM.CurrentMemberID + "}",
                contentType: 'application/json; charset=utf-8',
                success: function (data) {
                    notify('success', 'تم حجب العضو بنجاح');
                    $("#banModal_" + window.uniqueID()).modal('hide');
                    rHub.server.banMemberFromRoom(window.bannedMember().MemberID(), window.ID(), window.bannedType(), window.CurrentMember().MemberName());
                    window.bannedMember().BanType(window.bannedType());
                    window.bannedMember().IsMemberBanned(true);
                    self.BanMemberName("");
                    return;
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    $("#banModal_" + window.uniqueID()).modal('hide');
                    notify('error', 'حدث خطأ . من فضلك أعد المحاولة');
                }
            });
        };
        this.BannedMembers = ko.computed(function () {
            if (self.Type() == 'Private')
                return null;
            return ko.utils.arrayFilter(self.Members(), function (mem) {
                return mem.IsMemberBanned();
            });
        }, this);
        this.NotBannedMembers = ko.computed(function () {
            if (self.Type() == 'Private')
                return null;
            return ko.utils.arrayFilter(self.Members(), function (mem) {
                return !mem.IsMemberBanned() && mem.MemberID() != self.CurrentMemberID() && mem.MemberLevelID() < self.CurrentMember().MemberLevelID();
            });
        }, this);
        this.bannedType = ko.observable();
        this.BanMemberName = ko.observable("");
        this.banMemberByName = function () {
            var name = $("#txtBanMemberName_" + self.uniqueID()).val();
            var member = ko.utils.arrayFirst(self.NotBannedMembers(), function (mem) {
                return mem.MemberName() == name;
            });
            if (member == null)
                return;
            self.bannedMember(member);
            self.saveBanMember();
        }
        this.showControlPanel = function () {
            var window = this;
            $("#controlPanelModal_" + window.uniqueID()).modal('show');
        };
        this.removeSelectedBannedType = function (type) {
            var bannedMembers = [];
            $('#' + type).each(function (i, selected) {
                var id;
                if (this.options == undefined)
                    id = $(this).val();
                else
                    id = $(this.options[i]).val();
                var member = self.getMember(id);
                if (member != null) {
                    member.BanType(null);
                    member.IsMemberBanned(false);
                    bannedMembers[i] = id;
                }
            });
            if (bannedMembers.length > 0) {
                $.ajax({
                    url: '../Services/Services.asmx/RemoveBanningFromRoomMembers',
                    type: 'GET',
                    traditional: true,
                    data: { membersID: bannedMembers, roomID: self.ID() },
                    success: function (result) {
                        notify('success', 'تم حذف الحجب بنجاح');
                    }
                });
            }
        }
        this.closeRoom = function () {
            var window = this;
            var currentMemberLevel = window.CurrentMember().MemberLevelID();
            var topMember = ko.utils.arrayFirst(this.Members(), function (mem) {
                return mem.MemberLevelID() > currentMemberLevel;
            });
            if (topMember != null) {
                notify('error', 'لا يمكنك غلق الغرفة فى وجود ' + topMember.MemberName());
                return;
            }
            rHub.server.closeRoom(window.ID(), window.CurrentMember().MemberID(), window.CurrentMember().MemberName());
            $("#controlPanelModal_" + window.uniqueID()).modal('hide');
        };
        this.saveRoomTopic = function () {
            var window = this;
            rHub.server.updateRoomTopic(window.ID(), window.RoomTopic());
        }
        this.updateSocialLinks = function () {
            var window = this;
            rHub.server.updateSocialLinks(window.ID(), window.fbURL(), window.tURL(), window.utURL());
        };
        // invite friends
        this.ShowInviteFriends = function () {
            $("#inviteModal_" + self.uniqueID()).modal('show');
        };
        this.Invitefriends = function () {
            var window = this;
            var cbs = $('#inviteMembers_' + window.uniqueID() + ' input:checked');
            var ToMember = '';
            $.each(cbs, function () {
                ToMember += $(this).val() + ',';
            });
            $.ajax({
                url: '../Services/Services.asmx/InviteFriends',
                dataType: 'json',
                type: 'post',
                data: "{'memberName':'" + self.CurrentMember().MemberName() + "', 'roomID' : " + window.ID() + ", 'roomName' :'" + window.Name() + "','friendsIDs':'" + ToMember + "'}",
                contentType: 'application/json; charset=utf-8',
                success: function (data) {
                    notify('success', 'تم دعوة الأصدقاء بنجاح');
                    $("#inviteModal_" + window.uniqueID()).modal('hide');
                    return;
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    $("#inviteModal_" + window.uniqueID()).modal('hide');
                    notify('error', 'حدث خطأ . من فضلك أعد المحاولة.');
                }
            });
        };
        // send gifts to friends
        this.ShowSendGift = function () {
            $("#giftModal_" + self.uniqueID()).modal('show');
        };
        this.selectGift = function () {
            self.selectedGift = this;
            $('#giftUL_' + self.uniqueID()).find('label').removeClass('selected');
            $('#giftUL_' + self.uniqueID() + ' #gift_' + self.selectedGift.giftid()).next('label').addClass('selected');

        };
        this.SendGift = function () {
            var window = this;
            // get selected members
            var cbs = $('#giftMembers_' + window.uniqueID() + ' input:checked');
            var ToMember = [];
            $.each(cbs, function () {
                var member = { ID: $(this).val(), Name: $(this).attr('data-member-name') };
                ToMember.push(member);
            });
            var total = window.selectedGift.price() * ToMember.length;

            if (total > chatVM.CreditPoints()) {
                notify('error', 'حدث خطأ . ليس لديك رصيد كافى.');
                $("#giftModal_" + window.uniqueID()).modal('hide');
                return;
            }
            else {
                $.ajax({
                    url: '../Services/Services.asmx/SendGift',
                    dataType: 'json',
                    type: 'post',
                    data: "{'memberName':'" + self.CurrentMember().MemberName() + "', 'roomID' : " + window.ID() + ", 'roomName' :'" + window.Name() + "','friends':" + JSON.stringify(ToMember) + ", 'giftid':" + window.selectedGift.giftid() + ", 'uniqueID' : '" + window.uniqueID() + "'}",
                    contentType: 'application/json; charset=utf-8',
                    success: function (data) {
                        $("#giftModal_" + window.uniqueID()).modal('hide');
                        notify('success', 'تم إرسال الهدية بنجاح');
                        chatVM.CreditPoints(chatVM.CreditPoints() - total);
                        //chatVM.CreditPoints($('#uiHiddenFieldCreditPoints').val());
                        return;
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        $("#giftModal_" + window.uniqueID()).modal('hide');
                        notify('error', 'حدث خطأ . من فضلك أعد المحاولة.');
                    }
                });
            }
        };
        // attach
        this.ShowAttachFiles = function () {
            $("#attachModal_" + self.uniqueID()).modal('show');

            // clear fields & init hiddenfields
            var hiddenfield = $('#UploadFileName_' + self.uniqueID());
            hiddenfield.val('');
            $('#UploadFileName_' + self.uniqueID()).val('');
            $('#UploadStatus_' + self.uniqueID()).html('');
            $('#UploadButton_' + self.uniqueID()).show();
            $('#uploadSendbtn_' + self.uniqueID()).hide();
            $('#UploadedFile_' + self.uniqueID()).html('');
            $('#videoURL_' + self.uniqueID()).val('');
        };
        // audio 
        this.audioAttachment = "";
        this.UpdateAudioAttachment = function (audioDiv) {
            this.audioAttachment = audioDiv;
        };
        this.SendAudio = function () {
            if (this.audioAttachment != "") {
                rHub.server.sendToRoom(self.ID(), self.CurrentMember().MemberID(), self.CurrentMember().MemberName(), self.audioAttachment, self.CurrentMember().MemberLevelID(), self.CurrentMember().ProfileImg(), self.CurrentMember().MemberTypeID(), self.uniqueID());
                $("#attachModal_" + self.uniqueID()).modal('hide');
                self.audioAttachment = "";
            }
        };

        //admin part
        this.showAdminPart = ko.observable(false);
        if (this.Type() == "Room" && this.CurrentMember().MemberLevelID() > 1) {
            this.showAdminPart = ko.observable(true);
        }
        this.toggleAdminPart = function () {
            self.showAdminPart(!self.showAdminPart());
            yscroll = $(".MsgHistroy", " #" + self.uniqueID()).prop('scrollHeight') + 'px';
            if (self.showAdminPart()) {
                $(".MsgHistroy", " #" + self.uniqueID()).slimScroll({
                    railVisible: true,
                    height: "250px",
                    color: '#FEC401',
                    railColor: '#C7C5C0',
                    position: 'left',
                    scrollTo: yscroll  //$(".MsgHistroy", " #" + this.uniqueID()).height()
                });
                $(".MsgHistroy", " #" + self.uniqueID()).parent().animate({ height: 250 }, 700);
            }
            else {
                $(".MsgHistroy", " #" + self.uniqueID()).slimScroll({
                    railVisible: true,
                    height: "400px",
                    color: '#FEC401',
                    railColor: '#C7C5C0',
                    position: 'left',
                    scrollTo: yscroll  //$(".MsgHistroy", " #" + this.uniqueID()).height()
                });
                $(".MsgHistroy", " #" + self.uniqueID()).parent().animate({ height: 400 }, 700);
            }

        };

        // flash object 
        this.showFlashObject = ko.observable(true);
        this.toggleFlashObj = function (window) {
            self.showFlashObject(!self.showFlashObject());
        }
        //messages
        this.AdminMessageHistory = ko.observableArray();
        this.toggleMessageTime = function () { };
        function chatMessage(msg, senderImg) {
            if (senderImg == null || senderImg == undefined || senderImg == '')
                senderImg = 'images/defaultavatar.png';
            var msgData = { ID: 9999999, FromName: "", Message: msg, MessageDate: null, MemberLevel: 1, FromProfileImg: senderImg, FromID: 0, MemberTypeID: 1 };
            return ko.mapping.fromJS(msgData, {}, this);
        }
        this.oldestMsgID = function () {
            var id = Math.min.apply(null, ko.utils.arrayMap(self.MessageHistory(), function (m) {
                return m.ID();
            }));
            return id;
        };
        this.addNotificationMessage = function (msg) {
            var message = new chatMessage(msg);
            this.addMessage(message);
        };
        this.addBotMsg = function (msg, botImg) {
            botImg = botImg + '_' + this.Settings.TypeID() + '.png';
            msg = '<span class="botMsg" style="color:' + this.Settings.Color() + '">' + msg + '</span>';
            var message = new chatMessage(msg, botImg);
            this.addMessage(message);
        };
        this.addMessage = function (msg) {
            this.MessageHistory.push(msg);
            yscroll = $(".MsgHistroy", " #" + this.uniqueID()).prop('scrollHeight') + 'px';
            $(".MsgHistroy").slimScroll({
                railVisible: true,
                height: $(".MsgHistroy", " #" + this.uniqueID()).attr('data-height'),
                color: '#FEC401',
                railColor: '#C7C5C0',
                position: 'left',
                scrollTo: yscroll  //$(".MsgHistroy", " #" + this.uniqueID()).height()
            });

            if (!this.IsActive) {
                $('#MainTabs a[href="#' + this.uniqueID() + '"]').addClass('RoomAlertRed');
            }

            /* update save coversation link*/
            //this.SaveConversation();

        };
        this.addAdminMessage = function (msg) {
            this.AdminMessageHistory.push(msg);
            $(".AdminMsgHistroy").slimScroll({
                railVisible: true,
                height: $(".AdminMsgHistroy", " #" + this.uniqueID()).attr('data-height'),
                color: '#FEC401',
                railColor: '#C7C5C0',
                position: 'left',
                scrollTo: "'" + $(".AdminMsgHistroy", " #" + this.uniqueID()).prop('scrollHeight') + "px'" //$(".AdminMsgHistroy", " #" + this.uniqueID()).height()
            });
        };
        this.SaveConversation = function () {
            var str = "<link href='http://chat2connect.com/css/bootstrap.min.css' rel='stylesheet' /> <link href='http://chat2connect.com/css/main.css' rel='stylesheet' /> ";
            
            ko.utils.arrayForEach(self.MessageHistory(), function (msg) {
                if (msg.FromName && msg.Message)
                    str += msg.FromName + ":" + msg.Message + "<br />";
            });
             /*
            $('#SaveConv_' + self.ID()).click(function () {
                this.href = "data:html/plain;charset=UTF-8," + str;
            });*/
            
            $.ajax({
                url: '../Services/Services.asmx/saveToWord',
                type: 'post',
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                data: JSON.stringify({ body: str }),
                success: function (result) {
                    window.open(result, '_blank');
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    notify('error', 'حدث خطأ . من فضلك أعد المحاولة')
                }

            });

        };
        this.showOlderMessages = function () {
            var window = this;
            var oldestID = window.oldestMsgID();
            $.ajax({
                url: '../Services/Services.asmx/GetRoomOlderMessages',
                type: 'GET',
                data: { roomid: window.ID(), oldestMsgID: oldestID },
                success: function (result) {
                    $.each(result, function (index) {
                        self.MessageHistory.splice(index, 0, result[index]);
                    });
                }
            });
        };
        //Room supervisor
        this.clearQueue = function () {
            var window = this;
            rHub.server.clearQueue(window.ID());
        };
        this.updateRoomSetting = function (settingName) {
            var window = this;
            var newValue = !window.Settings[settingName]();

            // change opposite settings
            if (settingName == "MarkOnLoginWithWrite" && newValue) {
                rHub.server.updateRoomSetting(window.ID(), "MarkOnLoginWithoutWrite", !newValue);
                window.Settings["MarkOnLoginWithoutWrite"](!newValue);
            }

            if (settingName == "MarkOnLoginWithoutWrite" && newValue) {
                rHub.server.updateRoomSetting(window.ID(), "MarkOnLoginWithWrite", !newValue);
                window.Settings["MarkOnLoginWithWrite"](!newValue);
            }

            // apply new settings
            rHub.server.updateRoomSetting(window.ID(), settingName, newValue);
            window.Settings[settingName](newValue);

            return true;
        }
        this.MarkAllWithWriteCheck = ko.observable(false);
        this.markAllWithWrite = function () {
            var window = this;
            var newValue = !window.MarkAllWithWriteCheck();
            // change opposite settings
            if (newValue) {
                rHub.server.markAllWithoutWrite(window.ID(), !newValue, window.CurrentMember().MemberID());
                window.MarkAllWithoutWriteCheck(!newValue);
            }

            // apply new settings
            rHub.server.markAllWithWrite(window.ID(), newValue, window.CurrentMember().MemberID());
            window.MarkAllWithWriteCheck(newValue);


            return true;
        };
        this.MarkAllWithoutWriteCheck = ko.observable(false);
        this.markAllWithoutWrite = function () {
            var window = this;
            var newValue = !window.MarkAllWithoutWriteCheck();
            // change opposite settings
            if (newValue) {
                rHub.server.markAllWithWrite(window.ID(), !newValue, window.CurrentMember().MemberID());
                window.MarkAllWithWriteCheck(!newValue);
            }

            // apply new settings
            rHub.server.markAllWithoutWrite(window.ID(), newValue, window.CurrentMember().MemberID());
            window.MarkAllWithoutWriteCheck(newValue);


            return true;
        };

        //Mic Methods
        this.toggleMic = function () {
            var window = this;
            if (window.CurrentMember().IsMicOpened() == false) {
                window.startMic(window.CurrentMember().MemberID());
            }
            else {
                window.stopMic(window.CurrentMember().MemberID());
            }
        }
        this.requestMic = function () {
            var window = this;
            $.ajax({
                url: '../Services/Services.asmx/GetQueueOrder',
                dataType: 'json',
                type: 'post',
                data: "{'memberID':'" + window.CurrentMember().MemberID() + "', 'roomID' : '" + window.ID() + "' }",
                contentType: 'application/json; charset=utf-8',
                success: function (data) {
                    if (data.d > 0) {
                        if (window.MicMember() != null) {
                            // fix raise hand after open mic                                                                  
                            if (window.CurrentMember().MemberID() == window.MicMember().MemberID()) {
                                window.CurrentMember().IsMicOpened(false);
                                window.stopMic(window.CurrentMember().MemberID());
                            }
                        }
                        //move from roomMembers to queueMembers
                        window.CurrentMember().QueueOrder(data.d);

                        rHub.server.userRaisHand(window.ID(), window.CurrentMember().MemberID(), window.CurrentMember().QueueOrder());
                    }
                    else {
                        //move from queueMembers to roomMembers
                        window.CurrentMember().QueueOrder(null);
                        rHub.server.userDownHand(window.ID(), window.CurrentMember().MemberID());
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    notify('error', 'حدث خطأ . من فضلك أعد المحاولة')
                }
            });
        }
        this.startMic = function (memberid) {
            var window = this;
            // close current mic member mic
            if (window.MicMember() != null && window.Type() != 'Private') {
                window.stopMic(window.MicMember().MemberID());
            }
            var member = window.getMember(memberid);
            if (member != null) {
                getFlashMovie('chat2connect_' + window.uniqueID()).startMic(memberid);
                // remove member from list and add it to mic
                member.QueueOrder(null);
                member.IsMicOpened(true);
                if (window.Type() == 'Private') {
                    // start mic to friend
                    if (window.CurrentMember().MemberID() == memberid) {
                        rHub.server.userStartMic_Private(window.ID(), memberid);
                    }
                    else {
                        if (window.CurrentMember().NotifyOnMicOn()) {
                            var msg = member.MemberName() + ' أخذ المايك ';
                            addMsgToWindow(window, msg, "joinalert");
                        }
                    }
                    return;
                }
                
                if (window.CurrentMember().MemberID() == memberid) {
                    rHub.server.userStartMic(window.ID(), memberid);
                }
                else {
                    if (window.CurrentMember().NotifyOnMicOn()) {
                        var msg = member.MemberName() + ' أخذ المايك ';
                        addMsgToWindow(window, msg, "joinalert");
                    }
                }
            }
        }
        this.stopMic = function (memberid) {
            var window = this;
            var member = window.getMember(memberid);
            if (member != null) {
                getFlashMovie('chat2connect_' + window.uniqueID()).stopMic(memberid);
                member.IsMicOpened(false);
                if (window.Type() == 'Private') {
                    // stop mic for friend            
                    if (window.CurrentMember().MemberID() == memberid) {
                        rHub.server.userStopMic_Private(window.ID(), memberid);
                    }
                    else {
                        if (window.CurrentMember().NotifyOnMicOff()) {
                            var msg = member.MemberName() + ' ترك المايك ';
                            addMsgToWindow(window, msg, "leftalert");
                        }
                    }
                    return;
                }
                member.QueueOrder(null);
                // fix user disappear when start his mic and remove current mic member & ensure that current mic member is the same member we're stoping his mic
                //if (window.MicMember().MemberID() == memberid)
                //    window.MicMember(null);
                if (window.CurrentMember().MemberID() == memberid)
                    rHub.server.userStopMic(window.ID(), memberid)
                else {
                    if (window.CurrentMember().NotifyOnMicOff()) {
                        var msg = member.MemberName() + ' ترك المايك ';
                        addMsgToWindow(window, msg, "leftalert");
                    }
                }
            }
        }
        //cam methods
        this.toggleCam = function () {
            var window = this;
            if (window.CurrentMember().IsCamOpened() == false) {
                window.startCam(window.CurrentMember().MemberID());
            }
            else {
                window.stopCam(window.CurrentMember().MemberID());
            }
        }
        this.startCam = function (memberID) {
            var window = this;
            
            // check total opened cams 
            if (chatVM.TotalOpenedCams == chatVM.MaxCams) {
                notify('error', 'تم الوصول للحد الأقصى لعدد الكاميرات لحسابك');
                return;
            }

            // open my cam 
            if (window.CurrentMember().MemberID() == memberID) {
                
                if (window.OpenedCams().length == window.Settings.CamCount()) {
                    notify('error', 'تم الوصول للحد الأقصى لعدد الكاميرات داخل الغرفة');
                    return;
                }

            }
            var member = window.getMember(memberID);
            getFlashMovie('chat2connect_' + window.uniqueID()).startCam(memberID, member.MemberName());

            if (window.Type() == 'Private') {
                // show cam to friend 
                if (window.CurrentMember().MemberID() == memberID) {
                    rHub.server.userStartCam_Private(window.ID(), memberID);
                    member.IsCamOpened(true);
                }
                else {
                    if (window.CurrentMember().NotifyOnOpenCam()) {
                        var msg = member.MemberName() + ' قد بدأ فتح الكمراء';
                        addMsgToWindow(window, msg, "joinalert");
                    }
                }
                return;
            }
            
            
            if (window.CurrentMember().MemberID() == memberID) {
                rHub.server.userStartCam(window.ID(), window.CurrentMember().MemberID());
                member.IsCamOpened(true);                
            }
            chatVM.TotalOpenedCams++;
        }
        this.stopCam = function (memberID) {
            var window = this;
            getFlashMovie('chat2connect_' + window.uniqueID()).stopCam(memberID);
            var member = window.getMember(memberID);
            if (member == null)
                return;

            if (window.Type() == 'Private') {
                // close cam on friend
                if (window.CurrentMember().MemberID() == memberID) {
                    rHub.server.userStopCam_Private(window.ID(), memberID);
                    member.IsCamOpened(false);
                }
                else {
                    if (window.CurrentMember().NotifyOnCloseCam()) {
                        var msg = member.MemberName() + ' أغلق الكمراء';
                        addMsgToWindow(window, msg, "leftalert");
                    }
                }
                return;
            }
            
            if (window.CurrentMember().MemberID() == memberID) {
                rHub.server.userStopCam(window.ID(), window.CurrentMember().MemberID());
                member.IsCamOpened(false);
            }
            chatVM.TotalOpenedCams--;
        }

        $.ajax({
            url: '../Services/Services.asmx/LoadWindowEditorSettings?mid=' + chatVM.CurrentMemberID + '&windowID=' + this.ID() + '&type=' + this.Type(),
            success: function (data) {
                self.IsBold(data.IsBold);
                self.IsItalic(data.IsItalic);
                self.FontSize(data.FontSize);
                self.ForeColor(data.ForeColor);
            }
        });
        this.initEditor = function () {
            this.Editor.setValue("");
            if (self.IsBold()) {
                self.Editor.composer.commands.exec("bold");
                $('btnBold_' + self.uniqueID()).click();
            }
            if (self.IsItalic()) {
                self.Editor.composer.commands.exec("italic");
                $('btnItalic_' + self.uniqueID()).click();
            }
            // self.Editor.composer.commands.exec("fontSize", self.FontSize);
            self.Editor.composer.commands.exec("foreColor", self.ForeColor());

        }

        this.saveEditorSetting = function () {
            var settings = JSON.stringify({ IsBold: self.IsBold(), IsItalic: self.IsItalic(), FontSize: self.FontSize(), ForeColor: self.ForeColor() });
            $.post("../Services/Services.asmx/UpdateWindowEditorSettings", { mid: chatVM.CurrentMemberID, windowID: self.ID(), type: self.Type(), settings: settings });
        };
        this.showRoomInfo = function () {
            $("#infoModal_" + self.uniqueID()).modal('show');
        };

        this.RoomBots = ko.observableArray([]);
        if (this.Type() == 'Room') {
            $.ajax({
                url: '../Services/Services.asmx/LoadRoomBots?roomID=' + this.ID(),
                success: function (data) {
                    ko.utils.arrayMap(data, function (item) {
                        self.RoomBots.push(ko.mapping.fromJS(item));
                    })
                }
            });
        }
        this.roomBotsModalID = "roomBotModal_" + this.uniqueID();
        this.showRoomBots = function () {
            var window = this;
            $("#" + this.roomBotsModalID).modal('show');
        };
        this.saveRoomBots = function () {
            var window = this;
            $.post("../Services/Services.asmx/SaveRoomBots", { roomBots: ko.toJSON(window.RoomBots) })
                .done(function (data) {

                });
            $("#" + window.roomBotsModalID).modal('hide');
        };
        this.addRoomBot = function (roomBot) {
            this.RoomBots.push(ko.mapping.fromJS(roomBot));
        };
        this.allowInviteFriends = ko.computed(function () {
            if (self.Type() == 'Private')
                return null;
            var inviteBanBot = ko.utils.arrayFirst(self.RoomBots(), function (bot) {
                return bot.IsEnabled() && bot.BotID() == inviteFriendBanBotID;
            });
            if (inviteBanBot != null && inviteBanBot != undefined) {
                var currentMemberBan = ko.utils.arrayFirst(inviteBanBot.Settings.BannedMemberLevels(), function (bannedLevel) {
                    return bannedLevel == self.CurrentMember().MemberLevelID();
                });
                return currentMemberBan == null;
            }
            return true;
        }, this);
        this.hasEmailOwnerBot = ko.computed(function () {
            if (self.Type() == 'Private')
                return null;
            var emailOwnerBot = ko.utils.arrayFirst(self.RoomBots(), function (bot) {
                return bot.IsEnabled() && bot.BotID() == emailOwnerBotID;
            });
            if (emailOwnerBot != null && emailOwnerBot != undefined) {
                return true;
            }
            return false;
        }, this);
        this.roomEmailOwnerBotMsg = ko.observable();
        this.roomEmailOwnerBotModal = "roomEmailOwnerBotModal_" + this.uniqueID();
        this.showEmailOwnerBot = function () {
            $("#" + self.roomEmailOwnerBotModal).modal('show');
        };
        this.sendRoomEmailOwnerBotMsg = function () {
            $.ajax({
                url: "../Services/Services.asmx/SendEmailOwnerBotMsg",
                dataType: "json",
                type: "post",
                data: JSON.stringify({ roomID: self.ID(), message: self.roomEmailOwnerBotMsg() }),
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    if (data.d == false) {
                        notify('error', 'حدث خطأ . من فضلك أعد المحاولة.');
                    }
                    else if (data.d == true) {
                        notify('success', 'تم الإرسال بنجاح.');
                    }
                    $("#" + self.roomEmailOwnerBotModal).modal('hide');
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    notify('error', 'حدث خطأ . من فضلك أعد المحاولة.');
                }
            });
        };
        this.roomFriendsBotMsg = ko.observable();
        this.roomFriendsBotModalID = "roomFriendsBotModal_" + this.uniqueID();
        this.hasRoomFriendsBot = ko.computed(function () {
            if (self.Type() == 'Private')
                return null;
            var bot = ko.utils.arrayFirst(self.RoomBots(), function (item) {
                return item.IsEnabled() && item.BotID() == roomFriendsBotID;
            });
            if (bot != null && bot != undefined) {
                return true;
            }
            return false;
        }, this);
        this.showRoomFriendsBot = function () {
            $("#" + self.roomFriendsBotModalID).modal('show');
        };
        this.sendRoomFriendsBotMsg = function () {
            var msg = this.roomFriendsBotMsg();
            $.ajax({
                url: "../Services/Services.asmx/SendRoomFriendsBotMsg",
                dataType: "json",
                type: "post",
                data: JSON.stringify({ roomID: self.ID(), message: msg }),
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    if (data.d == false) {
                        notify('error', 'حدث خطأ . من فضلك أعد المحاولة.');
                    }
                    else if (data.d == true) {
                        notify('success', 'تم الإرسال بنجاح.');
                    }
                    $("#" + self.roomFriendsBotModalID).modal('hide');
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    notify('error', 'حدث خطأ . من فضلك أعد المحاولة.');
                }
            });
        };
        this.hasRoomLawBot = ko.computed(function () {
            if (self.Type() == 'Private')
                return null;
            var bot = ko.utils.arrayFirst(self.RoomBots(), function (item) {
                return item.IsEnabled() && item.BotID() == roomLawBotID;
            });
            if (bot != null && bot != undefined) {
                return true;
            }
            return false;
        }, this);
        this.hasRoomProgramBot = ko.computed(function () {
            if (self.Type() == 'Private')
                return null;
            var bot = ko.utils.arrayFirst(self.RoomBots(), function (item) {
                return item.IsEnabled() && item.BotID() == roomProgramBotID;
            });
            if (bot != null && bot != undefined) {
                return true;
            }
            return false;
        }, this);
        this.showRoomLaw = function () {
            $.post("../Services/Services.asmx/ShowRoomLaw", { roomID: this.ID() })
                .done(function (data) {
                });
        };
        this.showRoomProgram = function () {
            $.post("../Services/Services.asmx/ShowRoomProgram", { roomID: this.ID() })
                .done(function (data) {
                });
        };

        this.updateMemberType = function (mid, mTypeSpecID) {
            var member = this.getMember(mid);
            if (member != null) {
                member.MemberTypeID(mTypeSpecID);
            }
        }
        this.updateMemberName = function (mid, newName) {
            var member = this.getMember(mid);
            if (member != null) {
                member.MemberName(newName);
            }
        }
        this.updateMember = function (mid, prop, val) {
            var member = this.getMember(mid);
            if (member != null) {
                if (member.hasOwnProperty(prop))
                    member[prop](val);

                $('#usernode-' + member.MemberID()).popover('hide');
            }
        }

        this.ToggleFav = function () {
            var window = this;
            $.ajax({
                url: "../Services/Services.asmx/ToggleFav",
                dataType: "json",
                type: "post",
                data: "{'rid':'" + window.ID() + "'}",
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    if (data.d == false) {
                        notify('error', 'حدث خطأ . من فضلك أعد المحاولة.');
                    }
                    else if (data.d == true) {
                        var oldvalue = window.CurrentMember().IsFavorite();
                        window.CurrentMember().IsFavorite(!oldvalue);
                        if (oldvalue)
                            notify('success', 'تم حذف الغرفة من المفضلة بنجاح.');
                        else
                            notify('success', 'تم إضافة الغرفة إلى المفضلة بنجاح.');
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    //$('#pGeneral').css('display', 'none');
                    $("#favlink_" + rid).css('display', 'block');
                    notify('error', 'حدث خطأ . من فضلك أعد المحاولة.');
                }
            });
            rHub.server.updateFavRoomCount(window.CurrentMemberID());
        };
    }
    var loadingWindowModel = function (id, name, typeSpec) {
        var room = { ID: id, Name: name, Type: 'Room', IsLoading: true, IsTemp: false, Settings: { TypeID: typeSpec } };
        ko.mapping.fromJS(room, {}, this);
        var self = this;
        this.uniqueID = ko.computed(function () {
            return this.Type() + '_' + this.ID();
        }, this);
    }
    self.changeCurrent = function (selctor, id, type) {
        //self.ActivWindow();
        if (document.getElementById(selctor)) {
            $('#MainTabs a[href="#' + selctor + '"]').tab('show');
            $('#MainTabs a[href="#' + selctor + '"]').removeClass('RoomAlertRed');
            ko.utils.arrayForEach(self.windows(), function (window) {
                window.IsActive = false;
            });
            if (id != undefined && type != undefined) {
                var win = self.getWindow(id, type);
                if (win != undefined) {
                    self.ActivWindow(win);
                    win.IsActive = true;
                }
            }
            return;
        }
        else {
            ko.utils.arrayForEach(self.windows(), function (window) {
                window.IsActive = false;
            });
            return;
        }
    };
    self.openWindow = function (id, name, type, istemp, ishidden, levelid, isfriend, typeSpec, iscreator, friendPic) {
        if (id == self.CurrentMemberID && type != 'Room')
            return;
        var window = self.getWindow(id, type, name, typeSpec, iscreator, friendPic, isfriend);
        if (window == undefined) {
            self.addWindow(id, name, type, istemp, ishidden, levelid, isfriend, false, typeSpec, iscreator);
        }
        else {
            self.changeCurrent(window.uniqueID(), window.ID(), window.Type());
        }

    };
    self.addWindow = function (id, name, type, istemp, isHidden, levelid, isfriend, isHelp, typeSpec, iscreator) {
        if (istemp == undefined)
            istemp = false;
        if (isHelp == undefined)
            isHelp = false;
        if (type == 'Private') {
            var gifts = [];
            if (!isHelp) {
                $.ajax({
                    url: '../services/Services.asmx/GetGifts',
                    async: false,
                    success: function (data) {
                        gifts = data;
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        notify('error', 'حدث خطأ . من فضلك أعد المحاولة.');
                        return;
                    }
                });
            }
            var room = { ID: id, Name: name, Type: type, IsTemp: true, IsHelp: isHelp, Message: "", MessageHistory: [], Members: [{ MemberID: self.CurrentMemberID, MemberName: self.CurrentMemberName, IsMicOpened: false, IsCamOpened: false, IsCamViewed: false, MemberLevelID: 0, InRoom: 1, QueueOrder: 0, NotifyOnCloseCam: false, NotifyOnOpenCam: false, NotifyOnMicOn: false, NotifyOnMicOff: false, ShowMessageTime: false, IsFriend: isfriend, ProfileImg: self.CurrentMemberPic, MemberTypeID: self.CurrentMemberType, HasGift: false, LastJoinDate: new Date() }, { MemberID: id, MemberName: name, IsMicOpened: false, IsCamOpened: false, IsCamViewed: false, MemberLevelID: 0, InRoom: 1, QueueOrder: 0, NotifyOnCloseCam: false, NotifyOnOpenCam: false, NotifyOnMicOn: false, NotifyOnMicOff: false, ShowMessageTime: false, IsFriend: isfriend, ProfileImg: '', HasGift: false, MemberTypeID: typeSpec, LastJoinDate: new Date() }], CurrentMemberID: self.CurrentMemberID, Gifts: gifts, Settings: { TypeID: typeSpec, EnableCam: true, EnableMic: true } };
            var win = ko.mapping.fromJS(room, mapping);
            self.windows.push(win);
            self.changeCurrent(win.uniqueID(), win.ID(), win.Type());

            self.Init(win);
            setTimeout(function () { win.initEditor(); }, 1500);

            if (!isHelp)
                rHub.server.enterPrivateChatLog(id, name);
        }
        else {
            if (self.notTempRoom().length == self.maxRoom()) {
                notify('error', 'عفواً ، لقد قمت بدخول العدد الأقصى من الغرف فى نفس الوقت.');
                return;
            }

            var loadingWin = new loadingWindowModel(id, name, typeSpec);
            self.windows.push(loadingWin);
            self.changeCurrent(loadingWin.uniqueID(), loadingWin.ID(), loadingWin.Type());
            $.post("../services/Services.asmx/GetChatRoom", { id: id, isTemp: istemp })
                .done(function (data) {
                    self.windows.remove(loadingWin);
                    if (data.Status != 1) {
                        notify('error', data.Data);
                        // back to home tab
                        self.changeCurrent("home");
                        return;
                    }
                    self.pushWindow(data.Data);
                });
        }
    }
    self.pushWindow = function (data, keepSelection) {
        var win = ko.mapping.fromJS(data, mapping);
        self.windows.push(win);
        if (!keepSelection)
            self.changeCurrent(win.uniqueID(), win.ID(), win.Type());

        self.Init(win);
        setTimeout(function () { win.initEditor(); }, 1500);
        rHub.server.addToRoom(win.CurrentMember().MemberID(),win.ID());


        // check if a member using mic - start it if exists
        if (win.MicMember() != null && win.MicMember() != undefined) {
            setTimeout(function () { win.startMic(win.MicMember().MemberID()); }, 2500);
        }
        return win;
    };
    self.removeWindow = function () {
        if (this.Type() == "Room") {
            if (this.CurrentMember().IsCamOpened())
                this.stopCam(this.CurrentMember().MemberID());
            rHub.server.removeFromRoom(this.CurrentMember().MemberID(),this.ID());
            $.ajax({
                type: 'POST',
                url: "../services/Services.asmx/closeChatRoom",
                data: { id: this.ID() },
                async: true
            });
        }
        self.windows.remove(this);
        $('.nav-tabs a:last').tab('show');
        if (this.Type() == "Room") {
            if (this.WelcomeBot.hasOwnProperty("LogoutMsgPart1")) {
                var msg = this.WelcomeBot.LogoutMsgPart1() + ' ' + this.CurrentMember().MemberName() + ' ' + this.WelcomeBot.LogoutMsgPart2();
                var botImg = "<img src='/images/bots/EmailOwner_" + this.Settings.TypeID() + ".png' width=25px;height=25px/>";
                msg = botImg + '<span class="botMsg" style="color:' + this.Settings.Color() + '">' + msg + '</span>';
                notify('success', msg);
            }
        }
    }
    self.rateRoom = function (val) {
        var room = this;
        RateRoom(room.ID(), val);
        room.CurrentMember().UserRate(val);
        return true;
    }
    self.sendMessage = function (window) {
        if (window == null)
            window = this;
        if (window.Type() == "Room") {
            if (!window.CurrentMember().InRoom()) {
                rHub.server.showMemberInRoom(window.ID(), window.CurrentMember().MemberID());
            }
            rHub.server.sendToRoom(window.ID(), window.CurrentMember().MemberID(), window.CurrentMember().MemberName(), window.Editor.getValue(), window.CurrentMember().MemberLevelID(), window.CurrentMember().ProfileImg(), window.CurrentMember().MemberTypeID(), window.uniqueID());
        }
        else {
            rHub.server.sendPrivateMessage(window.ID(), window.Editor.getValue(), window.CurrentMember().ProfileImg(), window.CurrentMember().MemberTypeID());
        }
        //window.Message("");
        window.initEditor();
        /* window.Editor.setValue("");*/
        $('#emotionMenu_' + window.ID()).hide();
    }
    self.sendAdminMessage = function (window) {
        if (window == null)
            window = this;
        if (window.Type() == "Room" && window.CurrentMember().MemberLevelID() > 1) {
            rHub.server.sendToRoomAdmins(window.ID(), window.CurrentMember().MemberID(), window.CurrentMember().MemberName(), window.AdminsEditor.getValue(), window.CurrentMember().ProfileImg(), window.CurrentMember().MemberLevelID(), window.CurrentMember().MemberTypeID());
            window.AdminsEditor.setValue("");
        }
    };

    // init html Editor 
    // tooltips for toolbar
    // scroll bars
    self.Init = function (window) {
        $("#" + window.uniqueID() + " .emotionMenu > button.dropdown-toggle").click(function (e) {
            e.stopPropagation();
            $(this).next('.dropdown-menu').toggle();
        });
        /*
                $("#" + window.uniqueID() + " .adminSettingsMenu > button.dropdown-toggle").click(function (e) {
                    e.stopPropagation();            
                    $(this).next('.dropdown-menu').toggle();
                });  */

        $("#" + window.uniqueID() + ' .adminSettingsMenu .dropdown-menu').on({
            "click": function (e) {
                e.stopPropagation();
            }
        });


        window.Editor = new wysihtml5.Editor('uiTextMsg_' + window.uniqueID(), { toolbar: 'toolbar' + window.uniqueID(), parserRules: wysihtml5ParserRules, useLineBreaks: false, stylesheets: 'css/main.css' });

        if (window.Type() == 'Room' && $('#uiTextAdminMsg_' + window.uniqueID()).length > 0) {
            window.AdminsEditor = new wysihtml5.Editor('uiTextAdminMsg_' + window.uniqueID(), { parserRules: wysihtml5ParserRules, useLineBreaks: false, stylesheets: 'css/main.css' });
            if (window.AdminsEditor != null && window.AdminsEditor != undefined) {
                window.AdminsEditor.observe('load', function () {
                    window.AdminsEditor.composer.element.addEventListener('keyup', function (e) {
                        if (e.which == 13) {
                            e.preventDefault();
                            self.sendAdminMessage(window);
                        }
                    });
                });
            }
        }
        // apply enter key listener
        window.Editor.observe('load', function () {
            window.Editor.composer.element.addEventListener('keyup', function (e) {
                if (e.which == 13) {
                    e.preventDefault();
                    if (window.Type() == 'Room' && !window.CurrentMember().CanWrite())
                        return;
                    self.sendMessage(window);
                }
            });
        });
        // popover menu for members
        initPopover(window);

        // tooltips 
        $(".roomMenuItem").tooltip();
        // apply scroll to all
        $('.SScroll').each(function () {
            $(this).slimScroll({
                railVisible: true,
                height: $(this).attr('data-height'),
                color: '#FEC401',
                railColor: '#C7C5C0',
                position: 'left'
            });
        });
        // token input for invite members
        $("#invite_" + window.uniqueID()).tokenInput("Services/Services.asmx/SearchMembersFriends?memberID=" + self.CurrentMemberID, {
            theme: "facebook",
            preventDuplicates: true,
            hintText: "",
            noResultsText: "لا يوجد",
            searchingText: "بحث فى الأصدقاء..."
        });

        //view gifts 
        // get all prices loaded
        var items = {};
        $('#giftUL_' + window.uniqueID() + ' ul li').each(function () {
            items[$(this).attr('data-cat')] = true;
        });

        // select distinct price values
        var result = new Array();
        for (var i in items) {
            result.push(i);
        }

        // group gifts by prices
        for (i = 0; i < result.length; i++) {
            var wrapper = $('#giftUL_' + window.uniqueID() + ' li[data-cat="' + result[i] + '"]').wrapAll('<div id="wrapper_' + window.uniqueID() + "_" + i + '" class="collapse" />');
            $('<a class="btn btn-default" data-toggle="collapse" data-target="#wrapper_' + window.uniqueID() + "_" + i + '" style="width:100%">' + result[i] + ' نقطة' + '</a><div class="clear" style="height:2px;"></div>').insertBefore(wrapper.parent());
            $('<div class="clear" style="height:2px;"></div>').appendTo(wrapper.parent());
            // open 1st panel only
            if (i == 0)
                wrapper.parent().addClass('in');
        }

        // init send gift link for room member 
        $('.MemberSendGift').click(function () {
            $("#giftModal_" + window.uniqueID()).modal('show');
            $('#giftModal_' + window.uniqueID() + ' input.checkboxes').each(function () {
                $(this).attr('checked', false);
            });
            $('#giftModal_' + window.uniqueID() + ' input.checkboxes[value="' + $(this).attr('data-mid') + '"]').attr('checked', true);
        });


        // volume controls       

        $('#uiListenVolume_' + window.uniqueID()).slider()
          .on('slide', function (ev) {
              // check if room is not muted
              if ($('#mute_' + window.uniqueID()).attr('data-mute') == 'false')
                  self.setListenVolume(window, $('#uiListenVolume_' + window.uniqueID()).data('slider').getValue());
          });
        $('#uiMicVolume_' + window.uniqueID()).slider()
         .on('slide', function (ev) {
             self.setMicVolume(window, $('#uiMicVolume_' + window.uniqueID()).data('slider').getValue());
         });


        // attach files
        new AjaxUpload('#UploadButton_' + window.uniqueID(), {
            action: '../services/FileUploader.ashx',
            onComplete: function (file, response) {
                var div = '<div><img src="../images/btndelete.png" onclick="' + "DeleteFile(" + window.ID() + ",'" + response + "')\" class='delete' style='cursor:pointer;' title='حذف الصورة'/>" + response + '</div>';
                $(div).appendTo('#UploadedFile_' + window.uniqueID());
                $('#UploadFileName_' + window.uniqueID()).val(response);
                $('#UploadStatus_' + window.uniqueID()).html('تم رفع الصورة بنجاح');
                $('#UploadButton_' + window.uniqueID()).hide();
                $('#uploadSendbtn_' + window.uniqueID()).show();
            },
            onSubmit: function (file, ext) {
                if (!(ext && /^(png|gif|jpg)$/i.test(ext))) {
                    alert('حدث خطأ . تأكد من نوع ملف الصورة');
                    return false;
                }
                $('#UploadStatus_' + window.uniqueID()).html('جارى التحميل...');
            }
        });

        if (window.Type() == "Room" && window.CurrentMember().MemberLevelID() > 1) //MemberLevelID>1>>> Admin
        {
            var names = ko.utils.arrayMap(window.Members(), function (item) {
                return item.MemberName();
            });

            $("#txtBanMemberName_" + window.uniqueID()).autocomplete({
                source: names
            });
        }

        // add welcome message
        if (window.Type() == "Room") {
            if (window.WelcomeBot.hasOwnProperty("LoginMsgPart1")) {
                var msg = window.WelcomeBot.LoginMsgPart1() + ' ' + window.CurrentMember().MemberName() + ' ' + window.WelcomeBot.LoginMsgPart2();
                var botImg = "/images/bots/welcome";
                window.addBotMsg(msg, botImg);
            }
        }



    };
    self.removeMember = function (mid) { //remove member from rooms and private chat
        ko.utils.arrayForEach(self.windows(), function (room) {
            if (room.Type() == 'Private' && room.ID() == mid)
                self.windows().remove(room);
            else {
                var member = room.getMember(mid);
                if (member != null) {
                    member.InRoom(false);
                    member.IsCamOpened(false);
                    member.QueueOrder(null);
                }
            }
        });
    };
    // set the playback volume (volume value is from 0 to 1)
    self.setListenVolume = function setPlaybackVolume(window, volume) {
        getFlashMovie('chat2connect_' + window.uniqueID()).setPlaybackVolume(volume / 10.0);
    }
    self.MuteRoom = function (window) {
        if ($('#mute_' + window.uniqueID()).attr('data-mute') == 'false') {
            self.setListenVolume(window, 0);
            $('#mute_' + window.uniqueID()).attr('data-mute', 'true');
            window.IsMuted(true);
        }
        else {
            self.setListenVolume(window, $('#uiListenVolume_' + window.uniqueID()).data('slider').getValue());
            $('#mute_' + window.uniqueID()).attr('data-mute', 'false');
            window.IsMuted(false);
        }

    }
    // set the recording volume (volume value is from 0 to 1)
    self.setMicVolume = function setMicVolume(window, volume) {
        getFlashMovie('chat2connect_' + window.uniqueID()).setMicVolume(volume / 10.0);
    }
    self.SendImage = function (window) {
        if (window == null)
            return;
        var hiddenfield = $('#UploadFileName_' + window.uniqueID());
        if (hiddenfield.val() != '') {
            var randomid = Math.floor((Math.random() * 100000) + 1);
            var imageDiv = "<div style='margin:0 auto;text-align:center;'><a href='#imageModal_" + randomid + "' data-toggle='modal' style='text-decoration:none;'><img src='images.aspx?Image=files/rooms/attachedimages/" + hiddenfield.val() + "' style='margin:0 !important;'/></a></div>";

            var modaldiv = "<div id='imageModal_" + randomid + "' class='modal fade' role='modal' aria-hidden='true'><div class='modal-dialog'><div class='modal-content'><div class='modal-header'><a class='close pull-left' data-dismiss='modal' aria-hidden='true' style='text-decoration: none;'>×</a><h3 id='myModalLabel1' class='pull-right'>صورة</h3><div style='clear:both;height:1px;'></div></div><div class='modal-body'><div class='form-horizontal blockBox'><div class='row'><div class='col-sm-10 center'><img src='files/rooms/attachedimages/" + hiddenfield.val() + "' style='max-height:400px;max-width:450px;'/></div></div></div></div></div></div></div>";

            rHub.server.sendToRoom(window.ID(), window.CurrentMember().MemberID(), window.CurrentMember().MemberName(), imageDiv + modaldiv, window.CurrentMember().MemberLevelID(), window.CurrentMember().ProfileImg(), window.CurrentMember().MemberTypeID(), window.uniqueID());
        }
        hiddenfield.val('');
        $('#UploadFileName_' + window.uniqueID()).val('');
        $('#UploadStatus_' + window.uniqueID()).html('');
        $('#UploadButton_' + window.uniqueID()).show();
        $('#uploadSendbtn_' + window.uniqueID()).hide();
        $('#UploadedFile_' + window.uniqueID()).html('');
        $("#attachModal_" + window.uniqueID()).modal('hide');
    }
    self.SendVideo = function (window) {
        var url = $('#videoURL_' + window.uniqueID()).val();
        if (url == '')
            return false;
        var arr = url.split('v='); // remove "youtube.com/watch?v="
        var id = [];
        if (arr.length > 1)
            id = arr[1].split('&'); // extract vedio id from query string - first element in the array

        var randomid = Math.floor((Math.random() * 100000) + 1);
        var videoLink = "<div style='margin:0 auto;text-align:center;'><a href='#videoModal_" + randomid + "' data-toggle='modal' style='text-decoration:none;'><img src='http://img.youtube.com/vi/" + id[0] + "/0.jpg' style='width:160px;margin:0 !important;' /></a></div>";
        var iframe = "<iframe id='player' type='text/html' src='http://www.youtube.com/embed/" + id[0] + "?enablejsapi=1' frameborder='0' style='max-width:100%;min-height:400px;width:450px;'></iframe>"
        var modaldiv = "<div id='videoModal_" + randomid + "' class='modal fade' role='modal' aria-hidden='true'><div class='modal-dialog'><div class='modal-content'><div class='modal-header'><a class='close pull-left' data-dismiss='modal' aria-hidden='true' style='text-decoration: none;'>×</a><h3 id='myModalLabel1' class='pull-right'>فيديو</h3><div style='clear:both;height:1px;'></div></div><div class='modal-body' id='video_body_" + randomid + "'><div class='form-horizontal blockBox'><div class='row'><div class='col-sm-12 center'>" + iframe + "</div></div></div></div></div></div></div>";
        var helperscript = "<script type='text/javascript'>$('#videoModal_" + randomid + "').on('hidden.bs.modal', function () { callPlayer('video_body_"+randomid+"', 'stopVideo'); }); </script>";
        var newMsg = videoLink + modaldiv + helperscript;
        rHub.server.sendToRoom(window.ID(), window.CurrentMember().MemberID(), window.CurrentMember().MemberName(), newMsg, window.CurrentMember().MemberLevelID(), window.CurrentMember().ProfileImg(), window.CurrentMember().MemberTypeID(), window.uniqueID());
        $("#attachModal_" + window.uniqueID()).modal('hide');
    }
    self.SendAudio = function (window) {
        if (window.audioAttachment != "") {
            rHub.server.sendToRoom(window.ID(), window.CurrentMember().MemberID(), window.CurrentMember().MemberName(), window.audioAttachment, window.CurrentMember().MemberLevelID(), window.CurrentMember().ProfileImg(), window.CurrentMember().MemberTypeID(), window.uniqueID());
            $("#attachModal_" + window.uniqueID()).modal('hide');
            window.audioAttachment = "";
        }
    };

    /************ add friends logic *****************/
    self.SearchText = ko.observable('');
    /*self.SearchText.subscribe(function (newValue) {
        self.SearchPeople();
    });*/
    self.People = ko.observableArray();
    self.SearchPeople = function () {
        if (self.SearchText() == '')
            return;
        $('#loadingAddFriends').css('display', 'block');
        $('#noFriendsAddFriends').css('display', 'none');
        $('#errorAddFriends').css('display', 'none');
        $.ajax({
            url: '../Services/Services.asmx/SearchMembers_AddFriends',
            dataType: 'json',
            type: 'post',
            data: "{'mid':'" + self.CurrentMemberID + "', 'stext' : '" + self.SearchText() + "' }",
            contentType: 'application/json; charset=utf-8',
            success: function (data) {
                if (data.d != null || data.d != undefined) {
                    self.People.removeAll();
                    ko.utils.arrayMap(data.d, function (item) {
                        var newObj = {};
                        Object.keys(item).forEach(function (key) {
                            newObj[key] = ko.observable(item[key]);
                        });
                        self.People.push(newObj);
                    })
                }
                else {
                    self.People.removeAll();
                    $('#noFriendsAddFriends').css('display', 'block');
                }
                $('#loadingAddFriends').css('display', 'none');
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                $('#loadingAddFriends').css('display', 'none');
                $('#errorAddFriends').css('display', 'block');
            }
        });
    }
    self.AddNewFriend = function (fid) {
        $.ajax({
            url: '../Services/Services.asmx/AddRemoveFriend',
            type: 'GET',
            data: { mid: self.CurrentMemberID, fid: fid, isFriend: false },
            success: function (result) {
                var lst = self.friends();
                var newFriend = ko.mapping.fromJS(result);
                lst.push(newFriend);
                self.friends(lst);

                $.each(self.People, function () {
                    var mem = ko.utils.arrayFirst(self.People(), function (mem) {
                        return (mem.MemberID() == fid);
                    });
                    mem.IsFriend(true);
                });
            }
        });
    }
    self.ActivWindow = ko.observable();
    self.Bots = ko.onDemandObservable(getBots, this);
    function getBots() {
        $.ajax({
            url: '../Services/Services.asmx/LoadBots',
            context: this,
            success: function (data) {
                this.Bots(data);
            }
        });
    }
    self.getBotTemplate = function (id) {
        return 'bot_template_' + id;
    };

}

function onCamClose(userId, roomId) {
    var window = chatVM.getWindow(roomId.substr(roomId.indexOf("_") + 1), 'Room');
    if (window == null) {
        window = chatVM.getWindowByUniqueID(roomId, "Private");        
    }
    if (window == null)
        return;
    window.stopCam(userId);
}
function onMicRecordSaveSuccess(fileName) {
    // returned file name & roomid in this format [roomId,filename]
    var window = chatVM.getWindow(fileName.substr(0, fileName.indexOf(",")), 'Room');
    if (window == null)
        return;
    var audioDiv = "<div style='margin:0 auto;text-align:center;'><audio controls><source src='files/rooms/attacheaudio/" + fileName.substr(fileName.indexOf(",") + 1) + "' type='audio/mpeg'>Your browser does not support this audio format.</audio></div>";
    window.UpdateAudioAttachment(audioDiv);

}
function DeleteFile(roomid, file) {

    $('#UploadStatus_Room_' + roomid).html('جارى الحذف...');
    $.ajax({
        url: 'services/FileUploader.ashx?file=' + file,
        type: 'GET',
        cache: false,
        async: true,
        success: function (html) {
            $('#UploadedFile_Room_' + roomid).html('');
            $('#UploadStatus_Room_' + roomid).html('تم حذف الملف');
            $('#UploadButton_Room_' + roomid).show();
            $('#uploadSendbtn_Room_' + roomid).hide();
            $('#UploadFileName_Room_' + roomid).val('');

        }
    });

}
function addChatRoom(id, name, type, istemp, isHidden, levelid, isfriend, typespec, iscreator, friendPic) {
    if (chatVM == undefined)
        InitChat(100);
    chatVM.openWindow(id, name, type, istemp, isHidden, levelid, isfriend, typespec, iscreator, friendPic);
}
function getFlashMovie(movieName) {
    return document[movieName] || window[movieName];
}
var chatVM;
var roomFriendsBotID, emailOwnerBotID, inviteFriendBanBotID;
function addMsgToWindow(window, msg, css) {
    msg = "<div class='pull-left msgHolder " + css + "' style='width:auto;margin-right:5px;'>" + msg + "</div><div style='clear:both;height:3px;'></div>";
    window.addNotificationMessage(msg);
}
function InitChat(maxWinRooms, memberID, memberName, openedWindows, profilePic, memberType) {
    rHub = $.connection.chatRoomHub;

    //  dubug
    //$.connection.logging = true;

    $.connection.hub.start();

    $.connection.hub.connectionSlow(function () {
        notify('info','نواجه بعض الصعوبات مع الإتصال بالخادم. بعض خدمات الموقع قد لا تعمل بشكل سليم');
    });

    chatVM = new Chat(maxWinRooms, memberID, memberName, profilePic, memberType);
    ko.applyBindings(chatVM);
    $.connection.hub.start().done(function () {
        var win;
        ko.utils.arrayMap(openedWindows, function (item) {
            win = chatVM.pushWindow(item, true);
        });
        if (win != null && win != undefined)
            chatVM.changeCurrent(win.uniqueID(), win.ID(), win.Type());
    });

    // try to connect if disconnected
    $.connection.hub.disconnected(function () {
        notify('info', 'تم فقد الإتصال. جارى إعادة الإتصال الأن .....');
        setTimeout(function () {
            $.connection.hub.start();
        }, 5000); // Restart connection after 5 seconds.
    });

    /****** signalR ********/
    rHub.client.toggleBlockedFromMember = function (member, block) {
        if (block) {
            if (!chatVM.isBlockingMe(member.MemberID)) {
                var lst = chatVM.blockingMeMembers();
                var newItem = ko.mapping.fromJS(member);
                lst.push(newItem);
                chatVM.blockingMeMembers(lst);
            }
        }
        else {
            var blocked = chatVM.blockingMeMembers();
            if (blocked == undefined)
                return;
            var newLst = ko.utils.arrayFilter(chatVM.blockingMeMembers(), function (m) {
                return m.MemberID() != member.MemberID;
            });
            chatVM.blockingMeMembers(newLst);
        }
    };
    rHub.client.getPrivateMessage = function (fromId, message) {
        if (chatVM.isBlocked(fromId))
            return;
        var window = chatVM.getWindow(fromId, "Private", message.FromName, message.MemberTypeID);
        window.addMessage(message);
    };
    rHub.client.getAdminMessage = function (rid, msg) {
        var type = "Room";
        var window = chatVM.getWindow(rid, type);
        if (window == null)
            return;
        window.addAdminMessage(msg);
    };
    rHub.client.showMemberInRoom = function (rid, mid) {
        var window = chatVM.getWindow(rid, "Room");
        if (window == null)
            return;
        var member = window.getMember(mid);
        if (member == null)
            return;
        member.InRoom(true);
        if (member.MemberID() != window.CurrentMember().MemberID() && window.CurrentMember().NotifyOnFriendsLogOn()) {
            var msg = member.MemberName() + ' قد إنضم للغرفة ';
            addMsgToWindow(window, msg, "joinalert");
        }
    };
    rHub.client.getMessage = function (rid, msg, uniqueID) {
        var type = "Room";
        var window = chatVM.getWindow(rid, type);
        if (window == null) {
            window = chatVM.getWindowByUniqueID(uniqueID, "Private")
            if (window == null) return;
        }

        window.addMessage(msg);
    };

    rHub.client.addNewMember = function (rid, memberData) {
        var newMember = ko.mapping.fromJS(memberData);
        var type = "Room";
        var window = chatVM.getWindow(rid, type);
        if (window == null)
            return;
        var existingMember = window.getMember(newMember.MemberID());
        if (existingMember == null) {
            window.Members.push(newMember);
            existingMember = newMember;
        }
        else {
            existingMember.InRoom(newMember.InRoom());
            existingMember.LastJoinDate(newMember.LastJoinDate());
            // fix marking admin when login issue
            existingMember.IsMarked(newMember.IsMarked());
        }
        if (newMember.InRoom() && newMember.MemberID() != window.CurrentMember().MemberID() && window.CurrentMember().NotifyOnFriendsLogOn()) {
            var msg = newMember.MemberName() + ' قد إنضم للغرفة ';
            addMsgToWindow(window, msg, "joinalert");
        }
        // init popover menu for new members
        initPopover(window);
        // init send gift
        $('.MemberSendGift').click(function () {
            $("#giftModal_" + window.uniqueID()).modal('show');
            $('#giftModal_' + window.uniqueID() + ' input.checkboxes').each(function () {
                $(this).attr('checked', false);
            });
            $('#giftModal_' + window.uniqueID() + ' input.checkboxes[value="' + $(this).attr('data-mid') + '"]').attr('checked', true);
        });
        if (window.Settings["MarkOnLoginWithoutWrite"]() == true && newMember.MemberLevelID() == 1)
        {
            newMember.CanWrite(false);
            newMember.IsMarked(true);
            rHub.server.toggleUserMark(window.ID(), true, newMember.MemberID());
            window.Settings.EnableMic(false);
            window.Settings.EnableMicForAdminsOnly(true);
        }

        if (window.Settings["MarkOnLoginWithWrite"]() == true && newMember.MemberLevelID() == 1)
        {
            newMember.CanWrite(true);
            newMember.IsMarked(true);
            rHub.server.toggleUserMark(window.ID(), true, newMember.MemberID());
            window.Settings.EnableMic(false);
            window.Settings.EnableMicForAdminsOnly(true);
        }
        
    };
    rHub.client.removeMember = function (mid, roomId) {
        var window = chatVM.getWindow(roomId, "Room", "");
        if (window == null)
            return;
        var member = window.getMember(mid);
        if (member == null)
            return;
        member.QueueOrder(null);

        // hide popover if opened
        $("#m_" + member.MemberID()).popover('hide');

        member.InRoom(false);
        if (window.CurrentMember().NotifyOnFriendsLogOff()) {
            var msg = member.MemberName() + ' خرج من الغرفة ';
            addMsgToWindow(window, msg, "leftalert");
        }
        if (mid == chatVM.CurrentMemberID) {
            chatVM.windows.remove(window);
        }
    };
    function banMemberFromroom(mid, roomId, banTypeName, adminName) {
        var window = chatVM.getWindow(roomId, "Room", "");
        if (window == null)
            return;
        var member = window.getMember(mid);
        if (member == null)
            return;
        member.QueueOrder(null);
        member.InRoom(false);
        if (chatVM.CurrentMemberID == mid) {
            notify('error', ' تم طردك ' + banTypeName + ' من الغرفة ' + window.Name() + ' من قبل ' + adminName);
            chatVM.windows.remove(window);
            $('.nav-tabs a:last').tab('show');
        }
        else {
            var msg = 'تم طرد العضو ' + member.MemberName() + ' ' + banTypeName + ' من قبل ' + adminName + '';
            addMsgToWindow(window, msg, "banalert");
        }
    }
    rHub.client.banMemberFromRoom = function (mid, roomId, banTypeName, adminName) {
        banMemberFromroom(mid, roomId, banTypeName, adminName);
    };
    rHub.client.updateMemberLevel = function (roomId, mid, level) {
        var window = chatVM.getWindow(roomId, "Room", "");
        if (window == null)
            return;
        var member = window.getMember(mid);
        if (member == null)
            return;
        member.MemberLevelID(level);
        
        if (window.Type() == 'Room' && $('#uiTextAdminMsg_' + window.uniqueID()).length > 0 && level > 1) {
            // init admin editor 
            window.AdminsEditor = new wysihtml5.Editor('uiTextAdminMsg_' + window.uniqueID(), { parserRules: wysihtml5ParserRules, useLineBreaks: false, stylesheets: 'css/main.css' });
            if (window.AdminsEditor != null && window.AdminsEditor != undefined) {
                setTimeout(attachEnterkeyToAdminEditor(window), 1000);
            }

            setTimeout(updateAdminPart(window, true), 1000);

        }
        else {
            setTimeout(updateAdminPart(window, false), 1000);

           
        }

       
    };

    function attachEnterkeyToAdminEditor(window) {
        window.AdminsEditor.composer.element.addEventListener('keyup', function (e) {
            if (e.which == 13) {
                e.preventDefault();
                self.sendAdminMessage(window);
            }
        });
    }

    function updateAdminPart(window, isAdmin)
    {

        window.showAdminPart(isAdmin);

        if (isAdmin) {
            // init slim scroll 
            $("#MsgAdminHistroy_" + window.uniqueID()).slimScroll({
                    railVisible: true,
                    height: "100px",
                    color: '#FEC401',
                    railColor: '#C7C5C0',
                    position: 'left'
                });           
            $(".MsgHistroy", " #" + window.uniqueID()).parent().animate({ height: 250 }, 700);
        }
        else {
            $('.SScroll').each(function () {
                $(this).slimScroll({
                    railVisible: true,
                    height: $(this).attr('data-height'),
                    color: '#FEC401',
                    railColor: '#C7C5C0',
                    position: 'left'
                });
            });
            $(".MsgHistroy", " #" + window.uniqueID()).parent().animate({ height: 400 }, 700);
        }
    }

    rHub.client.updateRoomTopic = function (roomID, topic) {
        var type = "Room";
        var window = chatVM.getWindow(roomID, type);
        if (window == null)
            return;
        window.RoomTopic(topic);
    }
    rHub.client.closeRoom = function (roomID, adminName) {
        var type = "Room";
        var window = chatVM.getWindow(roomID, type);
        if (window == null)
            return;

        notify('error', 'تم غلق الغرفة ' + window.Name() + ' من قبل الأدمن ' + adminName);
        chatVM.windows.remove(window);
        $('.nav-tabs a:last').tab('show');
    }
    rHub.client.updateSocialLinks = function (roomID, fbURL, tURL, utURL) {
        var type = "Room";
        var window = chatVM.getWindow(roomID, type);
        if (window == null)
            return;
        window.fbURL(fbURL);
        window.tURL(tURL);
        window.utURL(utURL);
    }
    rHub.client.ListenMic = function (memberid, rid) {
        var type = "Room";
        var window = chatVM.getWindow(rid, type);
        if (window == null)
            return;

        window.startMic(memberid);
        initPopover(window);
    };
    rHub.client.StopListenMic = function (memberid, rid) {
        var type = "Room";
        var window = chatVM.getWindow(rid, type);
        if (window == null)
            return;

        window.stopMic(memberid);
        initPopover(window);
    };

    /* private chat handlres */
    rHub.client.ListenMic_Private = function (memberid) {
        var type = "Private";
        var window = chatVM.getWindow(memberid, type);
        if (window == null)
            return;
        if(window.CurrentMemberID() != memberid)
            window.startMic(memberid);
    };
    rHub.client.StopListenMic_Private = function (memberid) {
        var type = "Private";
        var window = chatVM.getWindow(memberid, type);
        if (window == null)
            return;

        window.stopMic(memberid);
    };

    rHub.client.StartCam_Private = function (memberid) {
        var type = "Private";
        var window = chatVM.getWindow(memberid, type);
        if (window == null)
            return;
        window.startCam(memberid);
    };
    rHub.client.StopCam_Private = function (memberid) {
        var type = "Private";
        var window = chatVM.getWindow(memberid, type);
        if (window == null)
            return;

        window.stopCam(memberid);
    };


    rHub.client.UserRaisHand = function (rid, memberid, queueOrder) {
        var window = chatVM.getWindow(rid, "Room");
        if (window != null) {
            var member = window.getMember(memberid);
            if (member != null) {
                if (window.MicMember() != null) {
                    // fix raise hand after open mic                                                                  
                    if (member.MemberID() == window.MicMember().MemberID()) {
                        member.IsMicOpened(false);                        
                        window.stopMic(member.MemberID());
                    }
                }
                member.QueueOrder(queueOrder);
                initPopover(window);
            }
        }
    };
    rHub.client.UserDownHand = function (rid, memberid) {
        var window = chatVM.getWindow(rid, "Room");
        if (window != null) {
            var member = window.getMember(memberid);
            if (member != null) {
                member.QueueOrder(null);
                initPopover(window);
            }
        }
    };
    rHub.client.UserMarked = function (rid, memberid) {
        var window = chatVM.getWindow(rid, "Room");
        if (window != null) {
            var member = window.getMember(memberid);
            if (member != null) {
                member.IsMarked(true);
                
            }
        }
        //  $("#Room_" + rid + " #roomMembersDiv #m_" + memberid + " .controls .mark").css('display', 'block');
    };
    rHub.client.UserUnMarked = function (rid, memberid) {
        var window = chatVM.getWindow(rid, "Room");
        if (window != null) {
            var member = window.getMember(memberid);
            if (member != null) {
                member.IsMarked(false);
                
            }
        }
        //   $("#Room_" + rid + " #roomMembersDiv #m_" + memberid + " .controls .mark").css('display', 'none');
    };
    rHub.client.ShowCamLink = function (mid, rid) {//member opened cam
        var window = chatVM.getWindow(rid, "Room");
        if (window != null) {
            var member = window.getMember(mid);
            if (member != null) {
                member.IsCamOpened(true);
                
                if (window.CurrentMember().MemberID() != member.MemberID() && window.CurrentMember().NotifyOnOpenCam()) {
                    var msg = member.MemberName() + ' قد بدأ فتح الكمراء';
                    addMsgToWindow(window, msg, "joinalert");
                }
            }
        }
        initPopover(window);
        // $('#Room_' + rid + ' #roomMembersDiv #m_' + mid + ' .controls .camera').css('display', 'inline-block');
    };
    rHub.client.HideCamLink = function (mid, rid) {
        var window = chatVM.getWindow(rid, "Room");
        if (window != null) {
            var member = window.getMember(mid);
            if (member != null) {
                member.IsCamOpened(false);
                
                if (window.CurrentMember().MemberID() != member.MemberID() && window.CurrentMember().NotifyOnCloseCam()) {
                    var msg = member.MemberName() + ' أغلق الكمراء';
                    addMsgToWindow(window, msg, "leftalert");
                }
            }
        }
        initPopover(window);
        //  $('#Room_' + rid + ' #roomMembersDiv #m_' + mid + ' .controls .camera').css('display', 'none');
    };
    rHub.client.clearQueue = function (rid) {
        var window = chatVM.getWindow(rid, "Room");
        if (window != null) {
            ko.utils.arrayForEach(window.QueueMembers(), function (member) {
                member.QueueOrder(null);
            });
            initPopover(window);

        }
    };
    rHub.client.updateRoomSetting = function (rid, setting, newValue) {
        var window = chatVM.getWindow(rid, "Room");
        if (window != null) {
            window.Settings[setting](newValue);
        }
    };
    rHub.client.markAllWithWrite = function (rid, isMarked, adminID) {
        var window = chatVM.getWindow(rid, "Room");
        var adminMember = window.getMember(adminID);
        if (window != null) {
            ko.utils.arrayForEach(window.ExistingMembers(), function (member) {
                if (adminMember == null || member.MemberLevelID() < adminMember.MemberLevelID()) {
                    member.IsMarked(isMarked);
                    member.CanWrite(true);
                    window.Settings.EnableMic(!isMarked);
                    window.Settings.EnableMicForAdminsOnly(isMarked);
                }
            });
        }
    };
    rHub.client.markAllWithoutWrite = function (rid, isMarked, adminID) {
        var window = chatVM.getWindow(rid, "Room");
        var adminMember = window.getMember(adminID);
        if (window != null) {
            ko.utils.arrayForEach(window.ExistingMembers(), function (member) {
                if (adminMember == null || member.MemberLevelID() < adminMember.MemberLevelID()) {
                    member.IsMarked(isMarked);
                    member.CanWrite(!isMarked);
                    window.Settings.EnableMic(!isMarked);
                    window.Settings.EnableMicForAdminsOnly(isMarked);
                }
            });
        }
    };
    rHub.client.GiftSentInRoom = function (roomID, memberName, friendName, giftName, friendID, giftpath, audiopath, uniqueID) {
        var window = chatVM.getWindow(roomID, "Room");
        if (window == null) {
            window = chatVM.getWindowByUniqueID(uniqueID, "Private")
            if (window == null) return;
        }
        message = "<div class='pull-left giftmsg'>" + memberName + " أرسل هدية (" + giftName + ") إلى " + friendName + "</div><div style='clear:both;height:1px;'></div>";
        window.addNotificationMessage(message);

        var receiverMember = window.getMember(friendID);
        if (receiverMember != null) {
            receiverMember.HasGift(true);
            setTimeout(function () { receiverMember.HasGift(false); }, 60000);
        }

        if (window.CurrentMemberID() == friendID) {
            var modaldiv = "<div class='modal fade' role='modal' aria-hidden='true'><div class='modal-dialog'><div class='modal-content'><div class='modal-header'><a class='close pull-left' data-dismiss='modal' aria-hidden='true' style='text-decoration: none;'>×</a><h3 id='myModalLabel1'>هدية</h3></div><div class='modal-body'><div class='form-horizontal blockBox'><div class='row'><div class='col-sm-10 center'><img src='" + giftpath + "' style='max-height:400px;'/></div></div></div></div></div></div>" + "<audio autoplay><source src='" + audiopath + "'></audio>" + "</div>";

            var $div = $(modaldiv);
            $('#MainTabs').prepend($div);
            $div.modal('show');
        }
    };

    rHub.client.getHamsa = function (fromMember, hamsa) {
        createHamsaWindow(hamsa, fromMember);
    };
    /*****************************************/
    rHub.client.getBotMsg = function (rid, msg, botImg) {
        var window = chatVM.getWindow(rid, "Room");
        if (window != null) {
            window.addBotMsg(msg, botImg);
        }
    };
    rHub.client.updateRoomType = function (rid, settings) {
        var roomInList = $("#rooms_rm_" + rid);
        if (roomInList.length > 0) {
            $(roomInList).css({ 'color': settings.Color });
        }

        var window = chatVM.getWindow(rid, "Room");
        if (window != null) {
            window.Settings.CamCount(settings.CamCount);
            window.Settings.MaxMic(settings.MaxMic);
            window.Settings.TypeID(settings.TypeID);
            window.Settings.Color(settings.Color);
        }
    }
    rHub.client.addRoomBot = function (rid, roomBot) {
        var window = chatVM.getWindow(rid, "Room");
        if (window != null) {
            window.addRoomBot(roomBot);
        }
    }

    rHub.client.updateMember = function (mid, prop, val) {
        //$('#usernode-' + mid).popover('hide');
        var member = ko.utils.arrayFirst(chatVM.friends(), function (f) {
            return f.MemberID() == mid;
        });
        if (member != undefined) {
            member[prop](val);
            //initPopupMenu();
        }
        member = ko.utils.arrayFirst(chatVM.helpMembers(), function (f) {
            return f.MemberID() == mid;
        });
        if (member != undefined)
            member[prop](val);
        if (prop == 'IsOnline')
            prop = 'InRoom';
        ko.utils.arrayForEach(chatVM.allRooms(), function (window) {
            window.updateMember(mid, prop, val);
        });

        // init link in friends menu 
        $('.openGiftModal').click(function () {
            $('#GeneralGiftModal').modal('show');
            $('#GeneralGiftModal input.checkboxes').each(function () {
                $(this).attr('checked', false);
            });
            $('#GeneralGiftModal input.checkboxes[value="' + $(this).attr('data-mid') + '"]').attr('checked', 'checked');
        });

        // init send btn 
        $('#btnGeneralSendGift').unbind('click');
        $('#btnGeneralSendGift').bind('click', function () { sendGeneralGift(); });

        // init select gift
        $('#GeneralGiftUL .GiftLabel').click(function () {
            generalSelectedGift = $(this);
            $('#GeneralGiftUL').find('label').removeClass('selected');
            $('#GeneralGiftUL' + ' #gift_' + generalSelectedGift.attr('data-giftid')).next('label').addClass('selected');
        });



       
    }
    rHub.client.updateMemberType = function (mid, typeSpecID) {
        var member = ko.utils.arrayFirst(chatVM.friends(), function (f) {
            return f.MemberID() == mid;
        });
        if (member != undefined)
            member.TypeSpecID(typeSpecID);
        member = ko.utils.arrayFirst(chatVM.helpMembers(), function (f) {
            return f.MemberID() == mid;
        });
        if (member != undefined)
            member.TypeSpecID(typeSpecID);
        ko.utils.arrayForEach(chatVM.allRooms(), function (window) {
            window.updateMemberType(mid, typeSpecID);
        });
    }

    rHub.client.updateMemberName = function (mid, newName) {
        var member = ko.utils.arrayFirst(chatVM.friends(), function (f) {
            return f.MemberID() == mid;
        });
        if (member != undefined)
            member.memberName(newName);
        member = ko.utils.arrayFirst(chatVM.helpMembers(), function (f) {
            return f.MemberID() == mid;
        });
        if (member != undefined)
            member.memberName(newName);
        ko.utils.arrayForEach(chatVM.allRooms(), function (window) {
            window.updateMemberName(mid, newName);
        });
    }
    rHub.client.addNewHelpMember = function (member) {
        var newHelp = ko.mapping.fromJS(member);
        var lst = chatVM.helpMembers();
        lst.push(newHelp);
        chatVM.helpMembers(lst);
    }
    rHub.client.removeHelpMember = function (mid) {
        var newLst = ko.utils.arrayFilter(chatVM.helpMembers(), function (f) {
            return f.MemberID() != mid;
        });
        chatVM.helpMembers(newLst);
    }

    rHub.client.openTemproom = function (roomid) {
        $('#GeneralModalPage').modal('hide');
        var window = chatVM.addWindow(roomid, 'غرفة مؤقتة', 'Room', true);

    };

    rHub.client.updateExistingCount = function (rid, count) {
        var room = $("#rooms_rm_" + rid + "_existingmembers");
        if (room) {
            /*var existing = Number(room.text());
            existing = existing + count;*/
            room.text(count);
        }
    };

    rHub.client.updateBalance = function (points) {
        chatVM.CreditPoints(points);
    }

    rHub.client.updateRoomCount = function (catid, subcatid, count, iscreatorCount, isfav) {
        var cat = $("#catLink_" + catid);
        var subcat = $("#subcatLink_" + subcatid);
        var creator = $("#catlink_minecount");
        var fav = $('#catlink_favcount');
        if (iscreatorCount) {
            /*var existing = Number(room.text());
            existing = existing + count;*/
            creator.text(count);
        }

        if (catid != 0)
            cat.text(count);
        if (subcatid != 0)
            subcat.text(count);
            
        if (isfav)
            fav.text(count);
    };
}
/********* common functions ****************/
function initPopover(window) {
    // popover menu for members
    $('.roomMemberlink').each(function () {
        var $this = $(this);
        var popoverContent = $this.find('.friendSubMenu');
        // check if popover content exists
        if (popoverContent.length > 0) {
            $this.popover({
                trigger: 'click',
                placement: 'left',
                html: true,
                content: popoverContent,
                title: '<a class="close pull-left closepopover" style="color:#fff;" onclick="$(&#39;#' + $this.attr('id') + '&#39;).popover(&#39;hide&#39;);">&times;</a>',
                container: '#' + window.uniqueID()
            }).on('hidden.bs.popover', function () {
                $this.append(popoverContent);
            });
        }
    });


    // init popover for bots 
    $('.botIcon').each(function () {
        var $this = $(this);
        var popoverContent = $this.find('.botInfo');
        // check if popover content exists
        if (popoverContent.length > 0) {
            $this.popover({
                trigger: 'hover',
                placement: 'top',
                html: true,
                content: popoverContent,
                template: '<div class="popover awesome-popover-class"><div class="arrow"></div><div class="popover-inner"><h3 class="popover-title"></h3><div class="popover-content"><p></p></div></div></div>',
                title: '<a class="close pull-left closepopover" style="color:#fff;" onclick="$(&#39;#' + $this.attr('id') + '&#39;).popover(&#39;hide&#39;);">&times;</a>',
                container: '#' + window.uniqueID()
            }).on('hidden.bs.popover', function () {
                $this.append(popoverContent);
            });
        }
    });

}
function createHamsaWindow(hamsa, sender) {

    var div = '<div class="ui-widget-content draggable hamsa" rel="0">' +
               '<div class="header">' +
                  '<button type="button" class="close pull-left" onclick="javascript:$(this).parent().closest(\'.hamsa\').remove();">×</button>' +
                  '<span class="selText" rel="0">همسة من ' + sender + '</span>' +
               '</div>' +
               '<div id="divMessage" class="messageArea">' + hamsa + '<div class="clear" style="height:1px;"></div></div>' + '</div>';

    var $div = $(div);
    $('body').prepend($div);
    $div.draggable({
        handle: ".header",
        stop: function () {
        }
    });
}
