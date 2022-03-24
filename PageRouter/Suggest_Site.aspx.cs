using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Suggest_Site : System.Web.UI.Page
{
    SqlBaglanti Baglanti=new SqlBaglanti();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btn_Send_Click(object sender, EventArgs e)
    {
        SqlCommand sqlCommand = new SqlCommand("insert into Tbl_Site " +
            "(WebSite_name,WebSite_url,WebSite_definition,WebSite_suggest) values " +
            "(@v1,@v2,@v3,@v4)",Baglanti.sqlBaglanti());
        sqlCommand.Parameters.AddWithValue("@v1",Txt_Name.Text);
        sqlCommand.Parameters.AddWithValue("@v2", Txt_URL.Text);
        sqlCommand.Parameters.AddWithValue("@v3", Txt_Definition.Text);
        sqlCommand.Parameters.AddWithValue("@v4", Txt_Suggest.Text);
        sqlCommand.ExecuteNonQuery();
        Baglanti.sqlBaglanti().Close();
        Response.Write("Tavsiye Alınmıştır");
    }
}