﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RoomTypes.ascx.cs" Inherits="Chat2Connect.usercontrols.RoomTypes" %>
<script src="../js/dreamcodes.js"></script>
<link href="../css/tsc_pricingtables.css" rel="stylesheet" />
<script src="../js/tsc_pricingtables.js"></script>
<script src="../js/jquery.tokeninput.js"></script>
<link href="../css/token-input-facebook.css" rel="stylesheet" />
<style>
    .spec {
        width: 20px;
        height: 20px;
        margin: 5px 5px 5px 5px;
        border-width: 1px;
        border-style: solid;
        border-color: rgba(0,0,0,.2);
    }

    .roomType {
        width: 20px;
        height: 20px;
        margin: 5px 5px 5px 5px;
        border-width: 1px;
        border-style: solid;
        border-color: rgba(0,0,0,.2);
    }
</style>
<script type="text/javascript">
    $(document).ready(function () {
        $('#roomtypes').addClass('active');
    });
</script>
<div class="form-horizontal blockBoxshadow">
    <div class="row">
        <div class="col-lg-2 pull-right" style="padding-top:3px;">
            رصيد النقاط
        </div>
        <div class="col-lg-4 pull-right bordered" style="padding:3px;">
            <asp:Label ID="lblPoints" runat="server" ></asp:Label> نقطة
        </div>
            <div class="col-lg-4 pull-right" style="color:#b5b5b5;padding-top:3px;">
                (كل 100 نقطة تساوى 10 ريال)
            </div>
            </div>
    <div class="row">
        <div class="col-lg-8" style="float: right;">
            <!-- DC Pricing Tables:3 Start -->
            <div class="tsc_pricingtable03 tsc_pt3_style1">
                <div class="caption_column" style="width: 30%;">
                    <ul>
                        <li class="header_row_2">
                            <h2 class="caption">إختر لون الترقية (الترقية)</h2>
                        </li>
                        <li class="row_style_4"><span>العدد المسموح فى الغرفة</span></li>
                        <li class="row_style_2"><span>مايكرفون</span></li>
                        <li class="row_style_4"><span>كاميرا</span></li>
                        <li class="row_style_2"><span style="font-size: 14px;">ظهور الغرفة</span>
                        <li class="row_style_4"><span style="font-size: 14px;">ظهور إعلانات فى الغرفة</span>
                        </li>
                        <li class="row_style_2"><span>مدة الإشتراك</span></li>
                    </ul>
                </div>
                <div class="column_1" style="width: 35%;">
                    <ul>
                        <li class="header_row_2 align_center" style="background-repeat: no-repeat; background-position: center;  background-image: url('images/bots/Room_1.png');background-size:70px;"></li>
                        <li class="row_style_4 align_center"><span>500</span></li>
                        <li class="row_style_2 align_center"><span>صوت واضح</span></li>
                        <li class="row_style_4 align_center"><span>رؤية واضحة</span></li>
                        <li class="row_style_2 align_center"><span>بعد الغرف المميزة</span></li>
                        <li class="row_style_4 align_center"><span>نعم</span></li>
                        <li class="row_style_2 align_center"><span>مجانا</span></li>
                    </ul>
                </div>
                <div class="column_2" style="width: 35%;">
                    <ul>
                        <li class="header_row_2 align_center">
                            <ul style="width: 100%; height: 100%">
                                <li style="width: 50%; height: 100%; float: right; background-repeat: no-repeat; background-position: center;  background-image: url('images/bots/Room_2.png');background-size:70px;"></li>
                                <li style="width: 50%; height: 100%; float: right; background-repeat: no-repeat; background-position: center;  background-image: url('images/bots/Room_3.png');background-size:70px;"></li>
                            </ul>
                        </li>
                        <li class="row_style_4 align_center"><span>2000</span></li>
                        <li class="row_style_2 align_center"><span>صوت نقى</span></li>
                        <li class="row_style_4 align_center"><span>رؤية مباشرة</span></li>
                        <li class="row_style_2 align_center"><span>فى أعلى الغرف</span></li>
                        <li class="row_style_4 align_center"><span>لا</span></li>
                        <li class="row_style_2 align_center"><span>شراء نقاط</span></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="tsc_clear" style="height:10px"></div>
        <div class="col-lg-4" style="padding-right: 10px;">
            <div class="row">
                إسم الغرفة المراد ترقية
            </div>
            <div class="row">
                <asp:TextBox ID="txtRoom" runat="server" CssClass="form-control"></asp:TextBox>
                <input type="hidden" runat="server" id="hdnRoom" />
            </div>
            <div class="col-sm-4 pull-right" style="padding-top: 10px;">
                <div class="col-sm-12">            
                لون الترقية
                    </div>
                <div class="clear" style="height:5px;"></div>
                <div class="col-sm-12 pull-right" id="specs" style="padding-top: 10px; padding-bottom: 10px;padding-right:0px;">
                
                
                <div class="col-sm-12 pull-right">
                    <div class="col-sm-4 pull-right">
                        <input type="radio" value="2" name="rdSpec" checked="checked" style="padding-top: 3px;" />
                    </div>
                    <div class="col-sm-8 pull-right" style="padding-right:0;">
                        <span style="display: block; width: 25px; height: 25px; ">
                            <i class="icon-2x icon-circle" style="color: #ff00fe"></i>
                        </span>
                    </div>
                    
                </div>
                    <div class="clear" style="height:5px;"></div>
                <div class="col-sm-12 pull-right">
                    <div class="col-sm-4 pull-right">
                        <input type="radio" value="3" name="rdSpec" style="padding-top: 3px;" />
                    </div>
                    <div class="col-sm-8 pull-right" style="padding-right:0;">
                        <span style="display: block; width: 25px; height: 25px;" >
                            <i class="icon-2x icon-circle" style="color: #880088"></i>
                        </span>
                    </div>
                    
                </div>
                <input type="hidden" id="hdnSpec" runat="server" value="2" />
            </div>
                <div class="clear" style="height:5px;"></div>
            </div>
             <div class="col-sm-7 pull-right" style="padding-top: 10px;">
                <div class="col-sm-12">
                    مدة الإشتراك
                    </div>
                 <div class="clear" style="height:5px;"></div>
                 <div class="col-sm-12" id="durations" style="padding-top: 5px;padding-right:0px;">
                <input type="hidden" id="hdnDuration" runat="server" value="1" />
               <div class="form-group col-sm-12" style="padding-right:0;">
                    <div class="col-sm-1 pull-right" style="padding-right:0;">
                        <input type="radio" name="rdDuration" value="1" checked="checked" />
                    </div>
                    <div class="col-sm-3 pull-right">شهر</div>
                    <div class="col-sm-6 pull-right">(1500 نقطة)</div>
                </div>
                <div class="form-group col-sm-12" style="padding-right:0;">
                    <div class="col-sm-1 pull-right" style="padding-right:0;">
                        <input type="radio" name="rdDuration" value="2" />
                    </div>
                    <div class="col-sm-3 pull-right">6 أشهر</div>
                    <div class="col-sm-6 pull-right">(6000 نقطة)</div>
                </div>
                <div class="form-group col-sm-12" style="padding-right:0;">
                    <div class="col-sm-1 pull-right" style="padding-right:0;">
                        <input type="radio" name="rdDuration" value="3" />
                    </div>
                    <div class="col-sm-3 pull-right">سنة</div>
                    <div class="col-sm-6 pull-right">(10000 نقطة)</div>
                </div>
            </div>
                 </div>


            <div class="clear" style="height:10px;"></div>
            
            <div class="col-sm-8 center_block">
                <a href="#confirm" data-toggle="modal" class="btn btn-warning">تنفيذ</a>
            </div>
        </div>
    </div>
</div>


<div id="confirm" class="modal fade" role="modal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <a class="close pull-left" data-dismiss="modal" aria-hidden="true" style="text-decoration: none;">×</a>
                <i class="icon-2x icon-edit" style="float: left; margin-left: 10px;"></i>
                <h3>تأكيد </h3>
            </div>
            <div class="modal-body">
                <div class="form-horizontal blockBox">
                    <div class="form-group">
                        <div class="col-sm-4 control-label pull-right">
                            <label>السؤال السرى</label>
                        </div>
                        <div class="col-sm-8 pull-right">
                            <asp:DropDownList ID="uiDropDownListQuestion" runat="server" CssClass="form-control">
                                <asp:ListItem Value="0">اختر السؤال السرى</asp:ListItem>
                                <asp:ListItem>اين ولدت</asp:ListItem>
                                <asp:ListItem>اقرب صديق اليك</asp:ListItem>
                                <asp:ListItem>اين تسكن</asp:ListItem>
                                <asp:ListItem>افضل مدينه زرتها</asp:ListItem>
                                <asp:ListItem>سيارة تتمنى اقتنائها</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-4 control-label pull-right">
                            <label>إجابة السوال السرى</label>
                        </div>
                        <div class="col-sm-8 pull-right">
                            <asp:TextBox ID="uiTextBoxAnswer" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="uiTextBoxAnswer" ErrorMessage="من فضلك أدخل إجابة السؤال السرى." ToolTip="من فضلك أدخل إجابة السؤال السرى." ValidationGroup="confirm" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <a href="#" class="btn btn-default" data-dismiss="modal" style="text-decoration: none;">إغلاق</a>
                <asp:LinkButton CssClass="btn btn-warning" runat="server" ID="uiLinkButtonConfirm" Style="text-decoration: none;" OnClick="uiLinkButtonConfirm_Click" ValidationGroup="confirm">تأكيد</asp:LinkButton>
            </div>
        </div>
    </div>
</div>
<script>
    $("#specs").on("change", "[name=rdSpec]", function () {
        $("#<%= hdnSpec.ClientID%>").val($(this).val());
    });
    $("#durations").on("change", "[name=rdDuration]", function () {
        $("#<%= hdnDuration.ClientID%>").val($(this).val());
    });
    $(document).ready(function () {
        $("#<%= hdnSpec.ClientID%>").val($("[name=rdSpec]:checked").val());
        $("#<%= hdnDuration.ClientID%>").val($("[name=rdDuration]:checked").val());
        $("#<%= txtRoom.ClientID%>").tokenInput("../Services/Services.asmx/SearchRoomsForTypes", {
            theme: "facebook",
            preventDuplicates: true,
            hintText: "",
            noResultsText: "لا يوجد",
            searchingText: "بحث فى الغرف...",
            tokenLimit: 1,
            onAdd: function (item) {
                $('#<%= hdnRoom.ClientID%>').val(item.id);
            },
        });
    });
</script>
