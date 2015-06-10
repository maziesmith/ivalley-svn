
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using Flight_DAL;
using System.Collections.Generic;


namespace Flight_BLL
{
    public class UsersNofications : _UsersNofications
    {
        public UsersNofications()
        {

        }

        public virtual bool getNotifications(Guid UserID)
        {
            return LoadFromRawSql("SELECT COUNT(UserNotificationID) NotifCount,NotificationTypes.NotificationTypeID, UserID FROM NotificationTypes LEFT JOIN UsersNofications ON NotificationTypes.NotificationTypeID = UsersNofications.NotificationType WHERE UserID = {0}  AND (IsRead <> 1 or IsRead is null) GROUP BY NotificationTypes.NotificationTypeID, UserID", UserID);
        }

        public virtual bool getUnreadedNotifications(Guid UserID)
        { 
            return LoadFromRawSql("SELECT COUNT(UserNotificationID) NotifCount,NotificationTypes.NotificationTypeID, UserID FROM NotificationTypes LEFT JOIN UsersNofications ON NotificationTypes.NotificationTypeID = UsersNofications.NotificationType WHERE UserID = {0}  AND (IsRead = 1 ) GROUP BY NotificationTypes.NotificationTypeID, UserID", UserID); 
        }

        public virtual bool MarkNotificationsRead(Guid UserID, int NotificationType)
        {
            return LoadFromRawSql("UPDATE UsersNofications SET IsRead = 1 WHERE UserID = {0} AND NotificationType={1}",UserID,NotificationType);
        }

        public virtual bool MarkNotificationsReadByCategoryID(Guid UserID, int NotificationType, int CategoryID)
        {
            return LoadFromRawSql("UPDATE UsersNofications SET IsRead = 1 WHERE UserID = {0} AND NotificationType={1} AND CategoryID = {2}", UserID, NotificationType,CategoryID);
        }

        public virtual bool getNotificationByCatID(Guid UserID, int CatID)
        {            
            return LoadFromRawSql("SELECT COUNT(UserNotificationID) NotifCount FROM UsersNofications WHERE UserID = {0} AND CategoryID = {1} AND (IsRead <> 1 or IsRead is null)", UserID, CatID);
        }
    }
}
