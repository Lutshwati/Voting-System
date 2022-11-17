using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

namespace Voting_System.Solution.Code.HTML
{
    public class MasterDB
    {


       public string cs = ConfigurationManager.ConnectionStrings["DDBASE"].ConnectionString;
       public SqlCommand cmd = new SqlCommand();
       public SqlConnection con = new SqlConnection();
       public string selectQuery = " Select ImageData from Candidate where First_Name = @First_Name ";
       public string insertQuery = "INSERT INTO [Candidate] ([Ward], [First_Name], [Last_Name], [Phone_Number], [Party_Name], [Image_Name], [ImageData], [Image_Size]) VALUES (@Ward, @First_Name, @Last_Name, @Phone_Number, @Party_Name, @Image_Name, @ImageData, @Image_Size)";


        public string strBase64;
        public string Url;

        public void LoadImages(string firstName)
        {
            using (con = new SqlConnection(cs))
            {

                cmd = new SqlCommand(selectQuery, con);
                cmd.Parameters.AddWithValue("@First_Name", firstName);
                con.Open();
                byte[] bytes = (byte[])cmd.ExecuteScalar();
                strBase64 = Convert.ToBase64String(bytes);
                Url = "data:Image/png;base64,";

            }
        }


        public void _Save(int _Ward, string firstName, string lastName, int PhoneNum, string partyName, HttpPostedFile postedFile)
        {



            string filename = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(filename);
            int fileSize = postedFile.ContentLength;

            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
                || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);


                //string cs = ConfigurationManager.ConnectionStrings["DDBASE"].ConnectionString;
                using (con = new SqlConnection(cs))
                {
                    cmd = new SqlCommand(insertQuery, con);
                    cmd.Parameters.AddWithValue("@Ward", _Ward);
                    cmd.Parameters.AddWithValue("@First_Name", firstName);
                    cmd.Parameters.AddWithValue("@Last_Name", lastName);
                    cmd.Parameters.AddWithValue("@Phone_Number", PhoneNum);
                    cmd.Parameters.AddWithValue("@Party_Name", partyName);
                    cmd.Parameters.AddWithValue("@Image_Name", filename);
                    cmd.Parameters.AddWithValue("@ImageData", bytes);
                    cmd.Parameters.AddWithValue("@Image_Size", fileSize);


                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    //Response.Redirect("Home.aspx");
                    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Candidate has been successfully added!!')", true);
                }
            }
        }

        public void Link()
        {
            con = new SqlConnection(@"Data Source=SQL8002.site4now.net;Initial Catalog=db_a8d328_voteb;Persist Security Info=True;User ID=db_a8d328_voteb_admin;Password=@Eza12345678");
        }
    }
}