using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class CategoryUpdate : System.Web.UI.Page
{
    SqlBaglanti Baglanti=new SqlBaglanti();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Category_id"];
        SqlCommand CommandUpdate = new SqlCommand("Select * From Tbl_Category where Category_id=@p1", Baglanti.sqlBaglanti());
        if (String.IsNullOrEmpty(id))
        {
            CommandUpdate.Parameters.AddWithValue("@p1", DBNull.Value);
        }
        else
            CommandUpdate.Parameters.AddWithValue("@p1", id);
        SqlDataReader sqlDataReader = CommandUpdate.ExecuteReader();
        while (sqlDataReader.Read())
        {
            Txt_CatName.Text = sqlDataReader[1].ToString();
            Txt_CatDefinition.Text = sqlDataReader[2].ToString();
            Txt_CatTotal.Text = sqlDataReader[3].ToString();
        }
        Baglanti.sqlBaglanti().Close();
    }

    protected void Btn_Update_Click(object sender, EventArgs e)
    {
    }
} 