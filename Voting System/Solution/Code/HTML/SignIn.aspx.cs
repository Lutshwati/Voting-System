using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Voting_System.Solution.Code.HTML
{
    public partial class SignIn : System.Web.UI.Page
    {
        DatabaseConnection Data = new DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["User"] = "";
                Session["Election"] = "";
                Session["Sum"] = "";
                Data.Link();
            }
        }

        protected void LogInbtn_Click(object sender, EventArgs e)
        {
            try
            {
                switch (drpUserSignIn.SelectedValue)
                {
                    case "Citizen":
                        Data.Link();
                        using (Data.OpenConection())
                        {
                            Data.DataReader("SELECT * FROM Citizens WHERE User_Name = '" + LogUser.Text + "' AND Password='" + LogPassword.Text + "'");

                            if (Data.dr.HasRows)
                            {
                                while (Data.dr.Read())
                                {
                                    Session["User"] = "Citizen";
                                    Session["Citizen_ID"] = Data.dr.GetValue(0);
                                    Session["_wardNum"] = Data.dr.GetValue(7).ToString();
                                    Session["CitizenName"] = Data.dr.GetValue(1).ToString();
                                    Session["Status"] = Data.dr.GetValue(13).ToString();
                                }
                                Response.Redirect("Home.aspx");

                            }
                            else
                            {
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Error!', 'Invalid details entered', 'Error')", true);
                            }
                        }
                        Data.CloseConnection();
                        break;
                    case "Admin":
                        Data.Link();
                        using (Data.OpenConection())
                        {
                            Data.DataReader("SELECT * FROM Admin WHERE Employee_Number= '" + LogUser.Text + "' AND Password='" + LogPassword.Text + "'");

                            if (Data.dr.HasRows)
                            {
                                while (Data.dr.Read())
                                {
                                    Session["User"] = "Admin";
                                }
                                Response.Redirect("newElection.aspx");
                                Response.Write(" <script>alert('Login is successful, you will be taken to AdminDashboard!')</script>");
                            }
                            else
                            {
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Error!', 'Please insert valid values', 'Error')", true);
                            }
                        }
                        Data.CloseConnection();
                        break;
                    case "-- Select User --":
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Error!', 'Choose a valid User and try again', 'Error')", true);
                        break;

                }
            }
            catch
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Error!', 'Check your nertwork connection and try again', 'Error')", true);
            }
        }
    }
}
