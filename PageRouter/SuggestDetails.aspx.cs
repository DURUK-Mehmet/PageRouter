using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SuggestDetails : System.Web.UI.Page
{
    SqlBaglanti Baglanti = new SqlBaglanti();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["WebSite_id"];
        SqlCommand Command = new SqlCommand("select * from Tbl_Site where WebSite_id=@p1", Baglanti.sqlBaglanti()); 
        if (String.IsNullOrEmpty(id))
        {
            Command.Parameters.AddWithValue("@p1", DBNull.Value);
        }
        else
            Command.Parameters.AddWithValue("@p1", id);
        SqlDataReader sqlReader = Command.ExecuteReader();
        while (sqlReader.Read())
        {
            Txt_SiteName.Text = sqlReader[1].ToString();
            Txt_Url.Text = sqlReader[2].ToString();
            Txt_SiteDefinition.Text = sqlReader[3].ToString();
        }
        Baglanti.sqlBaglanti().Close();
        if (Page.IsPostBack == false)
        {
            SqlCommand sqlCommand1 = new SqlCommand("select * from Tbl_Category", Baglanti.sqlBaglanti());
            SqlDataReader sqlDataReader1 = sqlCommand1.ExecuteReader();
            DropDownList1.DataTextField = "Category_name";
            DropDownList1.DataValueField = "Category_id";
            DropDownList1.DataSource = sqlDataReader1;
            DropDownList1.DataBind();
        }
    }

    protected void Btn_Accept_Click(object sender, EventArgs e)
    {

    }
}
