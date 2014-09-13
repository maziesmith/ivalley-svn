
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using IStock.DAL;
using System.Collections.Specialized;
using System.Data.SqlClient;
using System.Data;
namespace IStock.BLL
{
	public class Items : _Items
	{
		public Items()
		{
		
		}

        public virtual bool GetItemsByItemGroupID(int ItemGroupID)
        {
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@ItemGroupID", SqlDbType.Int, 0), ItemGroupID);

            return LoadFromSql("GetItemsByItemGroupID", parameters);

        }

        public virtual bool SearchItems(string FilterText, int ItemGroupID)
        {
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@FilterText", SqlDbType.NVarChar, 100), FilterText);
            parameters.Add(new SqlParameter("@ItemGroupID", SqlDbType.Int, 0), ItemGroupID);

            return LoadFromSql("SearchItems", parameters);

        }


        public virtual bool SearchItems(string FilterText)
        {
            ListDictionary parameters = new ListDictionary();
            parameters.Add(new SqlParameter("@FilterText", SqlDbType.NVarChar, 100), FilterText);            
            return LoadFromSql("SearchItems_General", parameters);

        }

        public virtual bool SearchItemsAjax(string FilterText, int ClientTypeID)
        {
            ListDictionary parameters = new ListDictionary();
            parameters.Add(new SqlParameter("@FilterText", SqlDbType.NVarChar, 100), FilterText);
            parameters.Add(new SqlParameter("@ClientTypeID", SqlDbType.Int, 0), ClientTypeID);
            return LoadFromSql("SearchItems_GeneralAjax", parameters);

        }

        public virtual object GenerateItemCode(int ItemGroupID)
        {
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@ItemGroupID", SqlDbType.Int, 0), ItemGroupID);

            return LoadFromSqlScalar("GenerateItemCode", parameters);

        }


        public virtual bool Report_GetItemsBalances(int ItemID)
        {
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@ItemID", SqlDbType.Int, 0), ItemID);

            return LoadFromSql("Report_GetItemsBalances", parameters);

        }


        public virtual bool Report_ItemPrices(int ItemID, int ClientTypeID)
        {
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@ItemID", SqlDbType.Int, 0), ItemID);
            parameters.Add(new SqlParameter("@ClientTypeID", SqlDbType.Int, 0), ClientTypeID);
            return LoadFromSql("Report_ItemPrices", parameters);

        }



        public virtual bool Report_GetItemTranHistory(int ItemID, DateTime? From, DateTime? To)
        {
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@ItemID", SqlDbType.Int, 0), ItemID);
            parameters.Add(new SqlParameter("@From", SqlDbType.DateTime, 0), From);
            parameters.Add(new SqlParameter("@To", SqlDbType.DateTime, 0), To);
            return LoadFromSql("Report_GetItemTranHistory", parameters);

        }
	}
}