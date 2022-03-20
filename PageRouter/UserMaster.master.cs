using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class UserMaster : System.Web.UI.MasterPage
{
    SqlBaglanti sqlBaglan = new SqlBaglanti(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand sqlCommand = new SqlCommand("select * from Tbl_Category",sqlBaglan.sqlBaglanti());
        SqlDataReader reader = sqlCommand.ExecuteReader();
        DataList1.DataSource = reader;
        DataList1.DataBind();
    }
}
