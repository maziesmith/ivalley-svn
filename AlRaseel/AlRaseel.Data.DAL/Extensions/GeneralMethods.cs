﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Net;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Http;
using Data.DataModels;
using Data.Repositories;

namespace Data.Extensions
{
    public static class GeneralMethods
    {
        public static string ConvertToSearchWord(string word)
        {
            try
            {
                if (word == "")
                    return "";
                string x = "";
                foreach (char ch in word.ToCharArray())
                {
                    switch (ch)
                    {
                        case 'أ':
                            x += "[أ,آ,ا,إ]";
                            break;
                        case 'إ':
                            x += "[أ,آ,ا,إ]";
                            break;
                        case 'ا':
                            x += "[أ,آ,ا,إ]";
                            break;
                        case 'آ':
                            x += "[أ,آ,ا,إ]";
                            break;
                        case 'ؤ':
                            x += "[و,ؤ]";
                            break;
                        case 'و':
                            x += "[و,ؤ]";
                            break;
                        case 'ئ':
                            x += "[ي,ئ,ى]";
                            break;
                        case 'ى':
                            x += "[ي,ئ,ى]";
                            break;
                        case 'ي':
                            x += "[ي,ئ,ى]";
                            break;
                        case 'ة':
                            x += "[ه,ة]";
                            break;
                        case 'ه':
                            x += "[ه,ة]";
                            break;
                        default:
                            x += ch.ToString();
                            break;

                    }

                }
                return x;
            }
            catch { return ""; }
        }
        public static string GetRecordInfo(string CreatedOn, string CreatedBy, string ModifiedOn, string ModifiedBy)
        {
          AdminRepository   _Obj = new AdminRepository();

            Admin _AdminObj = new Admin();
            _AdminObj = _Obj.LoadById(CreatedBy);

            string Data = "";
            Data += "<b>Created<br>By </b>" + _AdminObj.UserName.ToString() + "&nbsp;";
            Data += "<b>On : </b>" + _AdminObj.CreatedOn.ToString() + "<br>";
            _AdminObj = null;
            if (!string.IsNullOrEmpty(ModifiedBy))
            {
                _AdminObj = _Obj.LoadById(ModifiedBy);


                Data += "<b>Modified<br>By </b>" + _AdminObj.UserName + "&nbsp;";
                Data += "<b>On : </b>" + _AdminObj.ModifiedOn.ToString();
            }
            return Data;
        }
        public static string ConvertToDateString(string Date)
        {
            try
            {
                DateTime dt = DateTime.Parse(Date);
                return dt.Day + "/" + dt.Month + "/" + dt.Year;
            }
            catch { return ""; }
        }
        public static bool DeleteRestorVisible(object Active, string type)
        {
            try
            {
                return !(bool)Active == Convert.ToBoolean(type);
            }
            catch
            {
                return false;
            }
        }
        public static string GetYoutube(object Vurl)
        {
            if (string.IsNullOrEmpty(Vurl.ToString()))
                return string.Empty;
            else
            {
                try
                {
                    string CutStr = Vurl.ToString().Remove(0, Vurl.ToString().IndexOf("?v=") + 3);
                    string VideoYoutube = CutStr.Split('&')[0];
                    return "<iframe width=\"300\" height=\"220\" src=\"http://www.youtube.com/embed/" + VideoYoutube + "\" frameborder=\"0\" allowfullscreen></iframe>";
                }
                catch { return string.Empty; }
            }
        }
        public static string GetYoutubeBig(object Vurl)
        {
            if (string.IsNullOrEmpty(Vurl.ToString()))
                return string.Empty;
            else
            {
                try
                {
                    string CutStr = Vurl.ToString().Remove(0, Vurl.ToString().IndexOf("?v=") + 3);
                    string VideoYoutube = CutStr.Split('&')[0];
                    return "<iframe width=\"640\" height=\"480\" src=\"http://www.youtube.com/embed/" + VideoYoutube + "\" frameborder=\"0\" allowfullscreen></iframe>";
                }
                catch { return string.Empty; }
            }
        }
        public static string GetYoutubeThum(object Vurl)
        {
            if (string.IsNullOrEmpty(Vurl.ToString()))
                return string.Empty;
            else
            {
                try
                {
                    string CutStr = Vurl.ToString().Remove(0, Vurl.ToString().IndexOf("?v=") + 3);
                    string VideoYoutube = CutStr.Split('&')[0];
                    return "http://i1.ytimg.com/vi/" + VideoYoutube + "/hqdefault.jpg";
                }
                catch { return string.Empty; }
            }
        }
        public static string ArticleContent(string ArtId)
        {
            try
            {
                FileStream fs = new FileStream(System.Web.HttpContext.Current.Server.MapPath("~/system/backend/Articles/" + ArtId + ".dat"), FileMode.Open, FileAccess.Read);
                StreamReader sr = new StreamReader(fs);
                string content = sr.ReadToEnd();
                sr.Close();
                fs.Close();
                return content;
            }
            catch { return string.Empty; }
        }
        public static string FormatString(object str)
        {
            try
            {
                int len = 70;
                if (len != 0)
                {
                    if (str.ToString().Length >= len - 3)
                    {
                        int cut = len;
                        while (str.ToString()[cut] == ' ') { cut++; }
                        return (str.ToString().Substring(0, cut) + "...").Replace("\r\n", "<br />");
                    }
                    else
                    {
                        //more.Visible = false;
                        return str.ToString().Replace("\r\n", "<br />");
                    }
                }
                else { return str.ToString().Replace("\r\n", "<br />"); }
            }
            catch { return str.ToString(); }
        }
        public static string FormatString200(object str)
        {
            try
            {
                int len = 200;
                if (len != 0)
                {
                    if (str.ToString().Length >= len - 3)
                    {
                        int cut = len;
                        while (str.ToString()[cut] == ' ') { cut++; }
                        return (str.ToString().Substring(0, cut) + "...").Replace("\r\n", "<br />");
                    }
                    else
                    {
                        //more.Visible = false;
                        return str.ToString().Replace("\r\n", "<br />");
                    }
                }
                else { return str.ToString().Replace("\r\n", "<br />"); }
            }
            catch { return str.ToString(); }
        }
        public static string CutString(object Content, int CharNum)
        {
            string Result = "";
            if (Content != null && Content.ToString().Length > CharNum)
            {
                Result = Regex.Replace(Content.ToString(), "<.*?>", string.Empty);
                if (Result.Length > CharNum)
                {
                    Result = Result.Remove(CharNum);
                    int x = Result.LastIndexOf(' ');
                    Result = Result.Remove(x);
                    Result += "...";
                }
            }
            else
            {
                Result = Content.ToString();
            }
            return Result;
        }
        public static string SendMessage(string mailTo, string mailFromDisplayName, string mailCc, string subject, string body, string EmailSignature)
        {
            // try
            {
                if (!string.IsNullOrEmpty(mailTo))
                {
                    string mailFrom = ConfigurationManager.AppSettings["Email"].ToString();
                    SmtpClient client = new SmtpClient("relay-hosting.secureserver.net", 25);
                    client.Credentials = CredentialCache.DefaultNetworkCredentials;
                    /* client.Credentials = new NetworkCredential("vfaltas@bebrand.tv", "sempabebrand123", "smtpout.secureserver.net");
                     client.Host = "smtpout.secureserver.net";
                     client.Port = 25;*/
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.EnableSsl = false;
                    MailMessage mail = new MailMessage();
                    mail.From = new MailAddress(mailFrom, mailFromDisplayName);
                    mail.To.Add(mailTo);
                    if (!string.IsNullOrEmpty(mailCc))
                    {
                        mail.CC.Add(mailCc);
                    }
                    mail.Subject = subject;
                    mail.Body = "<table width=\"100%\"><tr><td align=\"left\" dir='ltr'><span style=\"font-size: 12pt;\">" + body + "</span></td></tr><tr><td align=\"center\">" + EmailSignature + "</td></tr></table>";

                    mail.IsBodyHtml = true;
                    client.Send(mail);
                }
                return mailTo;
            }
            // catch { return ""; }
        }
        public static string CreateRandomPassword(int PasswordLength)
        {
            string _allowedChars = "0123456789abcdefghijkmnopqrstuvwxyz";
            Random randNum = new Random();
            char[] chars = new char[PasswordLength];
            int allowedCharCount = _allowedChars.Length;
            for (int i = 0; i < PasswordLength; i++)
            {
                chars[i] = _allowedChars[(int)((_allowedChars.Length) * randNum.NextDouble())];
            }
            return new string(chars);
        }
        public static string CreateRandomName(int PasswordLength)
        {
            string _allowedChars = "abcdefghijkmnopqrstuvwxyz";
            Random randNum = new Random();
            char[] chars = new char[PasswordLength];
            int allowedCharCount = _allowedChars.Length;
            for (int i = 0; i < PasswordLength; i++)
            {
                chars[i] = _allowedChars[(int)((_allowedChars.Length) * randNum.NextDouble())];
            }
            return new string(chars);
        }
        public static string GetLanguageURL(StaticData.Language language)
        {
            // if (language= Data.DALStaticData.Language.English)

            return (language == StaticData.Language.English) ? HttpContext.Current.Request.Url.AbsolutePath.ToLower().Replace("_ar.aspx", ".aspx") :
                HttpContext.Current.Request.Url.AbsolutePath.ToLower().Replace(".aspx", "_ar.aspx"); ;
        }
    }
}
