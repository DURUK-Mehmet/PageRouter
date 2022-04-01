using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Contact : System.Web.UI.Page
{ 
    SqlBaglanti Baglanti=new SqlBaglanti(); 
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btn_Send_Click(object sender, EventArgs e)
    {
        SqlCommand sqlCommandAdd=new SqlCommand("insert into Tbl_Contact " +
            "(Contact_name,Contact_mail,Contact_subject,Contact_definition) " +
            "values (@v1,@v2,@v3,@v4)", Baglanti.sqlBaglanti());
        sqlCommandAdd.Parameters.AddWithValue("@v1", Txt_name.Text);
        sqlCommandAdd.Parameters.AddWithValue("@v2", Txt_mail.Text);
        sqlCommandAdd.Parameters.AddWithValue("@v3", Txt_subject.Text);
        sqlCommandAdd.Parameters.AddWithValue("@v4", Txt_definiton.Text);
        sqlCommandAdd.ExecuteNonQuery();
        Baglanti.sqlBaglanti().Close();
        Response.Write("Mesaj Alınmıştır");
    }
}