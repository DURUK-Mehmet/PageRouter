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
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand sqlCommand = new SqlCommand("Select * From Tbl_Category",Baglanti.sqlBaglanti());
        SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
        DataList1.DataSource = sqlDataReader;
        DataList1.DataBind();
        
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