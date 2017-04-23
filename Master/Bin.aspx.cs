using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Master
{
    public partial class Bin :Inherited
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static SqlConnection CreateConnection()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = @"Data Source=TEYA-PC;Initial Catalog=BooksDBSQL;Integrated Security=True";
            return conn;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (DataListItem li in DataList1.Items)
            {
                CheckBox s = (CheckBox)li.FindControl("CheckBox1");
                  if (s.Checked==true)
             {
               SqlConnection connection = CreateConnection();
               using (connection)
               {
                SqlCommand myCommand = new SqlCommand("delete_ShopCart", connection);
                myCommand.CommandType = CommandType.StoredProcedure;
                myCommand.CommandText = "delete_ShopCart";

                SqlParameter parBookID = new SqlParameter("@BookID", SqlDbType.NVarChar);
                parBookID.Value = ((Label)li.FindControl("BookIDLabel")).Text;
                myCommand.Parameters.Add(parBookID);


                //SqlParameter countAssortment = new SqlParameter("@a_id", SqlDbType.Int);
                //countAssortment.Direction = ParameterDirection.Output;
                //myCommand.Parameters.Add(countAssortment);

                try
                {
                    connection.Open();
                   myCommand.ExecuteNonQuery();
                   // int res = (Int32)myCommand.Parameters["@a_id"].Value;

                   
                }
                catch (Exception ex) {
                    Label4.Text = ex.ToString();
                }
                } 
            }
          }
            DataList1.DataBind();
        }
    }
}
    
