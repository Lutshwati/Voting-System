using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Voting_System.Solution.Code.HTML
{
    public partial class manageWards : System.Web.UI.Page
    {
        DatabaseConnection Data = new DatabaseConnection();
        string cs = ConfigurationManager.ConnectionStrings["DDBASE"].ConnectionString;
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Label3.Visible = false;
                Link();
                getElection();
            }

        }
        protected void savebtn_Click(object sender, EventArgs e)
        {
           // try
           // {
                HttpPostedFile postedFile = upload.PostedFile;
                string filename = Path.GetFileName(postedFile.FileName);
                string fileExtension = Path.GetExtension(filename);
                int fileSize = postedFile.ContentLength;

                if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
                    || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp")
                {
                    Stream stream = postedFile.InputStream;
                    BinaryReader binaryReader = new BinaryReader(stream);
                    Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);

                    using (con = new SqlConnection(cs))
                    {
                        cmd = new SqlCommand("INSERT INTO [Candidate] (Party_Name, Image_Data, Vote_Count, PRVotes, Year) VALUES(@Party_Name, @Image_Data, '"+ 0 +"', '"+0+"', '"+ Session["Election"] + "')", con);
                        cmd.Parameters.AddWithValue("@Party_Name", Party.Text.Trim());
                        cmd.Parameters.AddWithValue("@Image_Data", bytes);
                     
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    ClientScript.RegisterClientScriptBlock(this.GetType(),"k","swal('Success!', 'Candidate Party Added', 'success')",true);
                }
        }

        private void getElection()
        {
            Data.Link();
            using (Data.OpenConection())
            {
                Data.DataReader("SELECT TOP 1 * FROM [Election]");
                if (Data.dr.HasRows)
                {
                    while (Data.dr.Read())
                    {
                        Session["Election"] = Data.dr.GetValue(0);
                    }
                }
            }
            Data.CloseConnection();
        }

        public void Link()
        {
            con = new SqlConnection(@"Data Source=SQL8002.site4now.net;Initial Catalog=db_a8d328_voteb;Persist Security Info=True;User ID=db_a8d328_voteb_admin;Password=@Eza12345678");
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("SignIn.aspx");
        }
    }
}