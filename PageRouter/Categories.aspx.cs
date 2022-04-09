using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Categories : System.Web.UI.Page
{
    SqlBaglanti Baglanti=new SqlBaglanti();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            id=Request.QueryString["Category_id"];
            islem = Request.QueryString["islem"];
        }
        SqlCommand sqlCommand = new SqlCommand("Select * From Tbl_Category",Baglanti.sqlBaglanti());
        SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
        DataList1.DataSource = sqlDataReader;
        DataList1.DataBind();
        if (islem=="sil")
        {
            SqlCommand commandDelete = new SqlCommand("delete from Tbl_Category where Category_id=@p1",Baglanti.sqlBaglanti());
            if (String.IsNullOrEmpty(id))
            {
                commandDelete.Parameters.AddWithValue("@p1", DBNull.Value);
            }
            else
                commandDelete.Parameters.AddWithValue("@p1", id);
            commandDelete.ExecuteNonQuery();
            Baglanti.sqlBaglanti().Close();
        }
        
    }

    protected void Btn_Add_Click(object sender, EventArgs e)
    {
        SqlCommand sqlCommand = new SqlCommand("insert into Tbl_Category (Category_name,Category_definition) values (@v1,@v2)",Baglanti.sqlBaglanti());
        sqlCommand.Parameters.AddWithValue("@v1",Txt_Name.Text);
        sqlCommand.Parameters.AddWithValue("@v2",Txt_Definition.Text);
        sqlCommand.ExecuteNonQuery();
        Baglanti.sqlBaglanti().Close();
    }
}