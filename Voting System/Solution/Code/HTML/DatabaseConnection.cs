using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Configuration;
using System.IO;

namespace Voting_System.Solution.Code.HTML
{
    public class DatabaseConnection
    {

        string cs = ConfigurationManager.ConnectionStrings["DDBASE"].ConnectionString;
 
        SqlConnection con = new SqlConnection();

        public SqlDataReader dr { get; set; }
        public SqlCommand cmd { get; set; }

        public DatabaseConnection()
        {
            
        }

        public SqlConnection OpenConection()
        {
            con = new SqlConnection(cs);
            con.Open();
            return con;
        }


        public void CloseConnection()
        {
            con.Close();
        }

        public void ExecuteQueries(string Query_)
        {
            SqlCommand cmd = new SqlCommand(Query_, con);
            cmd.ExecuteNonQuery();
        }

        public SqlDataReader DataReader(string Query_)
        {
            SqlCommand cmd = new SqlCommand(Query_, con);
            dr = cmd.ExecuteReader();
            return dr;
        }

        public object ShowDataInGridView(string Query_)
        {
            SqlDataAdapter Dr = new SqlDataAdapter(Query_, cs);
            DataSet ds = new DataSet();
            Dr.Fill(ds);
            object dataum = ds.Tables[0];
            return dataum;
        }

        public void Link()
        {
            con = new SqlConnection(@"Data Source=SQL8002.site4now.net;Initial Catalog=db_a8d328_voteb;Persist Security Info=True;User ID=db_a8d328_voteb_admin;Password=@Eza12345678");
        }
    }
}