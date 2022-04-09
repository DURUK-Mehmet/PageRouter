using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class SiteUpdate : System.Web.UI.Page
{
    SqlBaglanti Baglanti=new SqlBaglanti();
    string id;    
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["WebSite_id"];
        if (Page.IsPostBack == false)
        {
            SqlCommand Command = new SqlCommand("Select * From Tbl_Site where WebSite_id=@p1", Baglanti.sqlBaglanti());
            if (String.IsNullOrEmpty(id))
            {
                Command.Parameters.AddWithValue("@p1", DBNull.Value);
            }
            else
                Command.Parameters.AddWithValue("@p1", id);
            SqlDataReader sqlDataReader = Command.ExecuteReader();
            while (sqlDataReader.Read())
            {
                Txt_SiteName.Text = sqlDataReader[1].ToString();
                Txt_Url.Text = sqlDataReader[2].ToString();
                Txt_SiteDefinition.Text = sqlDataReader[3].ToString();
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
    }

    protected void Btn_Update_Click(object sender, EventArgs e)
    {
        SqlCommand sqlCommand = new SqlCommand("update Tbl_Site set WebSite_name=@v1,WebSite_url=@v2,WebSite_definition=@v3,WebSite_category=@v4 where WebSite_id=@v5",Baglanti.sqlBaglanti());
        sqlCommand.Parameters.AddWithValue("@v1",Txt_SiteName.Text);
        sqlCommand.Parameters.AddWithValue("@v2", Txt_Url.Text);
        sqlCommand.Parameters.AddWithValue("@v3", Txt_SiteDefinition.Text);
        sqlCommand.Parameters.AddWithValue("@v4", DropDownList1.SelectedValue);
        sqlCommand.Parameters.AddWithValue("@v5", id);
        sqlCommand.ExecuteNonQuery();
        Baglanti.sqlBaglanti();

    }
}