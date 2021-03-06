﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Info
{
    [Serializable]
    public class InviteFriendBan : BotSettings
    {
        public List<string> BannedMemberLevels
        {
            get;
            set;
        }

        public InviteFriendBan()
            : base()
        {
            BannedMemberLevels = new List<string>();
        }

        public object MemberLevels
        {
            get
            {
                return Helper.EnumUtil.GetValues<Helper.Enums.RoomMemberLevel>().Select(r => new
                {
                    ID = (int)r,
                    Name = Helper.StringEnum.GetStringValue(r)
                }).ToList();
            }
        }

    }
}
