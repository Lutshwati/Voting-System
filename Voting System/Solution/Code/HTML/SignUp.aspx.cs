using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using Voting_System.Solution.Code.Classes;


namespace Voting_System.Solution.Code.HTML
{
    public partial class SignUp : System.Web.UI.Page
    {
        public string cs = ConfigurationManager.ConnectionStrings["DDBASE"].ConnectionString;
        public SqlCommand cmd = new SqlCommand();
        public SqlConnection con = new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            Link();
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            try
            {
                Link();
                using (con = new SqlConnection(cs))
                {
                    cmd = new SqlCommand("INSERT INTO [Citizens] ([Citizen_ID], [First_Name], [Last_Name], [User_Name], [Password], [Email], [Contact_Number], [Ward_Number], [Street], [Building], [City], [Postal_Code], [Province], [Vote_Status], [PRVote_Status], [Gender]) VALUES (@Citizen_ID, @First_Name, @Last_Name, @User_Name, @Password, @Email, @Contact_Number, @Ward_Number, @Street, @Building, @City, @Postal_Code, @Province, '" + "N" + "', '"+"N"+"', '"+txtGender.SelectedValue+"')", con);
                    cmd.Parameters.AddWithValue(@"Citizen_ID", identityNum.Text);
                    cmd.Parameters.AddWithValue(@"First_Name", first_name.Text);
                    cmd.Parameters.AddWithValue(@"Last_Name", last_name.Text);
                    cmd.Parameters.AddWithValue(@"Email", mail.Text);
                    cmd.Parameters.AddWithValue(@"Street", Add_Street.Text);
                    cmd.Parameters.AddWithValue(@"Building", Add_Building.Text);
                    cmd.Parameters.AddWithValue(@"Province", Add_Province.Text);
                    cmd.Parameters.AddWithValue(@"City", Add_City.Text);
                    cmd.Parameters.AddWithValue(@"Ward_Number", Add_Ward.Text);
                    cmd.Parameters.AddWithValue(@"Postal_Code", Add_Zip.Text);
                    cmd.Parameters.AddWithValue(@"User_Name", user_name.Text);
                    cmd.Parameters.AddWithValue(@"Contact_Number", contact_num.Text);
                    cmd.Parameters.AddWithValue(@"Password", RegPassword.Text);


                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("SignIn.aspx");
                }
            }
            catch
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Error!', 'Check your network connection and try again', 'Nertwork!')", true);
            }

        }
        public void Link()
        {
            con = new SqlConnection(@"Data Source=SQL8002.site4now.net;Initial Catalog=db_a8d328_voteb;Persist Security Info=True;User ID=db_a8d328_voteb_admin;Password=@Eza12345678");
        }
    }
}
