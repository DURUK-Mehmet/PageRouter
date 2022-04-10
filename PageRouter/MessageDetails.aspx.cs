using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MessageDetails : System.Web.UI.Page
{
    SqlBaglanti Baglanti=new SqlBaglanti();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Contact_id"];
        if (Page.IsPostBack == false)
        {
            SqlCommand Command = new SqlCommand("Select * From Tbl_Contact where Contact_id=@p1", Baglanti.sqlBaglanti());
            if (String.IsNullOrEmpty(id))
            {
                Command.Parameters.AddWithValue("@p1", DBNull.Value);
            }
            else
                Command.Parameters.AddWithValue("@p1", id);
            SqlDataReader sqlReader = Command.ExecuteReader();
            while (sqlReader.Read())
            {
                Txt_Name.Text = sqlReader[1].ToString();
                Txt_Mail.Text = sqlReader[2].ToString();
                Txt_Subject.Text = sqlReader[3].ToString();
                Txt_Definition.Text = sqlReader[4].ToString();
            }
            Baglanti.sqlBaglanti().Close();
        }
    }
}