using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class WebSites : System.Web.UI.Page
{
    SqlBaglanti Baglanti=new SqlBaglanti();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack==false)
        {
            SqlCommand sqlCommand1 = new SqlCommand("select * from Tbl_Category", Baglanti.sqlBaglanti());
            SqlDataReader sqlDataReader1 = sqlCommand1.ExecuteReader();
            DropDownList1.DataTextField = "Category_name";
            DropDownList1.DataValueField = "Category_id";
            DropDownList1.DataSource = sqlDataReader1;
            DropDownList1.DataBind();
        }
        SqlCommand sqlCommand = new SqlCommand("select * from Tbl_Site",Baglanti.sqlBaglanti());
        SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
        DataList1.DataSource = sqlDataReader;
        DataList1.DataBind();

        
    }

    protected void Btn_Add_Click(object sender, EventArgs e)
    {
        SqlCommand sqlCommand = new SqlCommand("insert into Tbl_Site (WebSite_name,WebSite_url,WebSite_definition,WebSite_category) values (@v1,@v2,@v3,@v4)",Baglanti.sqlBaglanti());
        sqlCommand.Parameters.AddWithValue("@v1",Txt_Name.Text);
        sqlCommand.Parameters.AddWithValue("@v2", Txt_Url.Text);
        sqlCommand.Parameters.AddWithValue("@v3", Txt_Definition.Text);
        sqlCommand.Parameters.AddWithValue("@v4", DropDownList1.SelectedValue);
        sqlCommand.ExecuteNonQuery();
        Baglanti.sqlBaglanti().Close();

    }
}