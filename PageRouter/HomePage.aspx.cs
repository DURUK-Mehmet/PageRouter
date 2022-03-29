using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class HomePage : System.Web.UI.Page
{
    SqlBaglanti sqlBaglanti=new SqlBaglanti(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand sqlCommand = new SqlCommand("select * from Tbl_Site", sqlBaglanti.sqlBaglanti());
        SqlDataReader reader = sqlCommand.ExecuteReader();
        DataList1.DataSource = reader;
        DataList1.DataBind();
    }
}