
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using IStock.DAL;
using System.Collections.Specialized;
using System.Data.SqlClient;
using System.Data;
namespace IStock.BLL
{
	public class Invoices : _Invoices
	{
		public Invoices()
		{
		
		}


        public virtual bool GetAllInvoices()
        {
            ListDictionary parameters = new ListDictionary();

            return LoadFromSql("GetAllInvoices", parameters);
        }

        public virtual string GetLastInvoiceNo()
        {
            ListDictionary parameters = new ListDictionary();
            object number = LoadFromSqlScalar("GetLastInvoiceNo", parameters);
            if (number != null)
                return number.ToString();
            else
                return "";
        }

        public string getNewSerial()
        {
            string serial = "";

            string temp = GetLastInvoiceNo();

            if (string.IsNullOrEmpty(temp))
            {
                temp = "10000";
            }

            temp = (double.Parse(temp) + 1).ToString();
            if (!temp.StartsWith("4"))
                serial = "4" + double.Parse(temp).ToString("000000000");
            else
                serial = double.Parse(temp).ToString("0000000000");
            return serial;
        }

        public decimal GetInvoiceTotals(int InvoiceID)
        {
            ListDictionary parameters = new ListDictionary();
            parameters.Add(new SqlParameter("@InvoiceID", SqlDbType.Int, 0), InvoiceID);
            object total = LoadFromSqlScalar("GetInvoiceTotals", parameters);
            if (total != null)
                return decimal.Parse(total.ToString());
            return 0;
        }

        public virtual bool GetDeliveryOrderInvoice(int DeliveryOrderID)
        {
            ListDictionary parameters = new ListDictionary();
            parameters.Add(new SqlParameter("@DeliveryOrderID", SqlDbType.Int, 0), DeliveryOrderID);
            return LoadFromSql("GetDeliveryOrderInvoice", parameters);            
        }
	}
}
