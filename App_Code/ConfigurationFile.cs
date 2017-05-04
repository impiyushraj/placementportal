using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ConfigurationFile
/// </summary>
public class ConfigurationFile
{
    public SqlConnection con = new SqlConnection();
    public ConfigurationFile()
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString;
    }

    public float AutoGenerate()
    {
        Random rn = new Random();
        float autogen = rn.Next(11111, 99999);
        return autogen;
    }
}