using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class HomePage2 : System.Web.UI.Page
{
    SqlBaglanti sqlBaglanti=new SqlBaglanti();
    string Cat_id="";
    protected void Page_Load(object sender, EventArgs e)
    {
        Cat_id = Request.QueryString["WebSite_category"];
        SqlCommand sqlCommand = new SqlCommand("Select * From Tbl_Site where WebSite_category=@p1",sqlBaglanti.sqlBaglanti());
        //sqlCommand.Parameters.AddWithValue("@p1",Cat_id);
        if (String.IsNullOrEmpty(Cat_id))
        {
            sqlCommand.Parameters.AddWithValue("@p1", DBNull.Value);
        }
        else
            sqlCommand.Parameters.AddWithValue("@p1", Cat_id);
        SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();   
        DataList1.DataSource = sqlDataReader;
        DataList1.DataBind();
    }
}   