﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Combo.Models
{
    public class ComboPostLike
    {
        public int ComboPostID { get; set; }
        public int ComboUserID { get; set; }
        public string UserName { get; set; }
        public string ProfilePic { get; set; }
        public string DisplayName { get; set; }
        public string PostText { get; set; }
        public object Attachments { get; set; }
        public bool IsFollowing { get; set; }
    }
}