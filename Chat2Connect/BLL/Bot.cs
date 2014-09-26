
// Generated by MyGeneration Version # (1.3.0.3)

using DAL;
using System;
using System.Collections.Generic;

namespace BLL
{
	public class Bot : _Bot
	{
		public Bot()
		{
		
		}

        public bool LoadAllWithPoints()
        {
            return LoadFromRawSql(String.Format(@"select Bot.*,BotPoints.Points
                                                  From Bot
	                                                    INNER JOIN BotPoints ON Bot.ID=BotPoints.BotID
                                                  WHERE Bot.RowStatusID={0}", (int)Helper.Enums.RowStatus.Enabled));
        }

        public List<Info.Bot> GetAll()
        {
            List<Info.Bot> result = new List<Info.Bot>();
            if (LoadAllWithPoints())
            {
                do
                {
                    Info.Bot bot = GetInfoObject();

                    result.Add(bot);
                } while (MoveNext());
            }
            return result;
        }

        private Info.Bot GetInfoObject()
        {
            Info.Bot bot = new Info.Bot();
            bot.ID = ID;
            bot.Title = Title;
            bot.IconPath = IconPath;
            bot.Points = Helper.TypeConverter.ToInt32(GetColumn(BotPoints.ColumnNames.Points));
            bot.SettingObject = GetSettingObject(ID,"{}");
            return bot;
        }

        public static Info.BotSettings GetSettingObject(int botID, string settingString)
        {
            Info.BotSettings botSetting;
            switch (botID)
            {
                case (int)Helper.Enums.Bot.Welcome:
                    botSetting = Helper.JsonConverter.Deserialize<Info.WelcomeBot>(settingString);
                    break;
                case (int)Helper.Enums.Bot.InviteFriendsBan:
                    botSetting = Helper.JsonConverter.Deserialize<Info.InviteFriendBan>(settingString);
                    break;
                case (int)Helper.Enums.Bot.FollowAdmin:
                    botSetting = Helper.JsonConverter.Deserialize<Info.FollowAdmin>(settingString);
                    break;
                case (int)Helper.Enums.Bot.MemberTypeLogin:
                    botSetting = Helper.JsonConverter.Deserialize<Info.MemberTypeLogin>(settingString);
                    break;
                case (int)Helper.Enums.Bot.EmailOwner:
                    botSetting = Helper.JsonConverter.Deserialize<Info.EmailOwner>(settingString);
                    break;
                case (int)Helper.Enums.Bot.RoomFriends:
                    botSetting=Helper.JsonConverter.Deserialize<Info.RoomFriend>(settingString);
                    break;
                case (int)Helper.Enums.Bot.RoomLaw:
                    botSetting = Helper.JsonConverter.Deserialize<Info.RoomLaw>(settingString);
                    break;
                case (int)Helper.Enums.Bot.RoomProgram:
                    botSetting = Helper.JsonConverter.Deserialize<Info.RoomProgram>(settingString);
                    break;
                default:
                    botSetting = new Info.BotSettings();
                    break;
            }

            return botSetting;
        }
    }
}
