using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
public class SqlBaglanti
{
    public SqlConnection sqlBaglanti()
    {
        SqlConnection sqlConnection = new SqlConnection(@"Data Source=THESENSEI; Initial Catalog=DB_PageRouter; Integrated Security=True");
        sqlConnection.Open();
        return sqlConnection;
    }
}