
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using IStock.DAL;
using System.Collections.Specialized;
using System.Data.SqlClient;
using System.Data;
namespace IStock.BLL
{
	public class InvoiceDetails : _InvoiceDetails
	{
		public InvoiceDetails()
		{
		
		}

        public virtual bool GetInvoicerDetails(int InvoiceID)
        {
            ListDictionary parameters = new ListDictionary();
            parameters.Add(new SqlParameter("@InvoiceID", SqlDbType.Int, 0), InvoiceID);
            return LoadFromSql("GetInvoiceDetails", parameters);
        }
	}
}
