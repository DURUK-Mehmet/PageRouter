using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Suggest_Site : System.Web.UI.Page
{
    SqlBaglanti Baglanti = new SqlBaglanti();
    void Listele()
    {
        
        
    }
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Btn_Send_Click(object sender, EventArgs e)
    {

        SqlCommand sqlCommandAdd = new SqlCommand("insert into Tbl_Site " +
            "(WebSite_name,WebSite_url,WebSite_definition,WebSite_suggest) values " +
            "(@v1,@v2,@v3,@v4)", Baglanti.sqlBaglanti());

        sqlCommandAdd.Parameters.AddWithValue("@v1", Txt_Name.Text);
        sqlCommandAdd.Parameters.AddWithValue("@v2", Txt_URL.Text);
        sqlCommandAdd.Parameters.AddWithValue("@v3", Txt_Definition.Text);
        sqlCommandAdd.Parameters.AddWithValue("@v4", DropList.SelectedItem.ToString());
        sqlCommandAdd.ExecuteNonQuery();
        Baglanti.sqlBaglanti().Close();
        Response.Write("Tavsiye Alınmıştır");
    }


}