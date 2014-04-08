﻿using MyGeneration.dOOdads;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace DAL
{
    public class _Membership : SqlClientEntity
    {
        public _Membership()
        {

        }
        public bool ChangeUsername(string oldUsername, string newUsername, string applicationName, out string errorMsg)
        {
            errorMsg = string.Empty;
            ListDictionary parameters = new ListDictionary();
            parameters.Add(new SqlParameter("@ApplicationName", SqlDbType.NVarChar), applicationName);
            parameters.Add(new SqlParameter("@OldUserName", SqlDbType.NVarChar), oldUsername);
            parameters.Add(new SqlParameter("@NewUserName", SqlDbType.NVarChar), newUsername);
            SqlParameter retValParam = new SqlParameter("@ReturnValue", SqlDbType.Int);
            retValParam.Direction = ParameterDirection.ReturnValue;
            parameters.Add(retValParam, null);

            base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_MembershipChangeUserName]", parameters);

            int returnValue = -1;
            if (retValParam.Value != null)
            {
                returnValue = Convert.ToInt32(retValParam.Value);
                if (returnValue == 1)
                {
                    errorMsg = "إسم المستخدم المطلوب تغييره غير موجود";
                }
                else if (returnValue == 2)
                {
                    errorMsg = "الإسم الجديد مستخدم من قبل";
                }
            }
            else
            {
                errorMsg = "Unknow error";
            }

            return (returnValue == 0 ? true : false);
        }
    }
}
