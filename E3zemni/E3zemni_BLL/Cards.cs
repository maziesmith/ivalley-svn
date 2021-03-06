
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using E3zmni.DAL;
using System.Collections.Specialized;
using System.Data.SqlClient;
using System.Data;

namespace E3zmni.BLL
{
	public class Cards : _Cards
	{
		public Cards()
		{
		
		}

        public virtual bool GetCardsByCategoryID(int CatID, bool IsPartySupplier)
        {
            this.Where.CategoryID.Value = CatID;
            this.Where.CategoryID.Operator = MyGeneration.dOOdads.WhereParameter.Operand.Equal;
            this.Where.IsPartySupplier.Value = IsPartySupplier;
            this.Where.IsPartySupplier.Operator = MyGeneration.dOOdads.WhereParameter.Operand.Equal;
            this.Query.AddOrderBy("CardNameEng", MyGeneration.dOOdads.WhereParameter.Dir.ASC);
            return this.Query.Load();

        }

        public virtual bool SearchCards(string filterText, int CatID, int MCatID, int TLCatID, double PriceFrom, double PriceTo, string DimensionIds, string ColorIDs, bool IsPartySupplier)
        {
            ListDictionary parameters = new ListDictionary();
            parameters.Add(new SqlParameter("@FilterText", SqlDbType.NVarChar, 100), filterText);
            parameters.Add(new SqlParameter("@CategoryID", SqlDbType.Int, 0), CatID);
            parameters.Add(new SqlParameter("@MCatID", SqlDbType.Int, 0), MCatID);
            parameters.Add(new SqlParameter("@TLCatID", SqlDbType.Int, 0), TLCatID);
            parameters.Add(new SqlParameter("@PriceFrom", SqlDbType.Float, 0), PriceFrom);
            parameters.Add(new SqlParameter("@PriceTo", SqlDbType.Float, 0), PriceTo);
            parameters.Add(new SqlParameter("@DimensionIDs", SqlDbType.NVarChar, 100), DimensionIds);
            parameters.Add(new SqlParameter("@ColorIDs", SqlDbType.NVarChar, 100), ColorIDs);
            parameters.Add(new SqlParameter("@IsPartySupplier", SqlDbType.Bit, 0), IsPartySupplier);
            return LoadFromSql("SearchCards", parameters);

        }
	}
}
