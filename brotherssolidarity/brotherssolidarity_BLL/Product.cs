
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using DAL;
using System.Collections.Specialized;
using System.Data.SqlClient;
using System.Data;

namespace BLL
{
	public class Product : _Product
	{
		public Product()
		{
		
		}
        public virtual bool SearchProducts(int CategoryID, string Query, bool Allcats)
        {
            string CategoryIDs = CategoryID.ToString();
            CategoryIDs += GetAllSubCats(CategoryID);
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@CategoryIDs", SqlDbType.NText, 1073741823), CategoryIDs);
            parameters.Add(new SqlParameter("@FilterText", SqlDbType.NVarChar, 100), Query);
            parameters.Add(new SqlParameter("@AllCats", SqlDbType.Bit, 0), Allcats);

            return LoadFromSql("SearchProducts", parameters);

        }

        public string GetAllSubCats(int CategoryID)
        {
            string subcats = "";
            ProductCategories subcat = new ProductCategories();
            DataTable dt = subcat.GetSubCategories(CategoryID);

            foreach (DataRow dr in dt.Rows)
            {
                ProductCategories ch = new ProductCategories();
                DataTable children = ch.GetSubCategories(Convert.ToInt32(dr[ProductCategories.ColumnNames.ProductCategoryID]));
                if (children.Rows.Count > 0)
                {
                    subcats += "," + dr["ProductCategoryID"].ToString() + GetAllSubCats(Convert.ToInt32(dr[ProductCategories.ColumnNames.ProductCategoryID]));

                }
                else
                    subcats += "," + dr["ProductCategoryID"].ToString();
            }
            return subcats;
        }

	}
}
