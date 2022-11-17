using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Voting_System.Solution.Code.HTML
{
    public partial class CitizenVote : System.Web.UI.Page
    {
        DatabaseConnection Data = new DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Session["PartyId"] = "";
                Session["Vote_Count"] = "";
                Session["PRCandidate"] = "";
                Session["PRVotes"] = "";

                if (Session["Status"].ToString() == "N")
                {
                    getElection();
                    getElectionByDate();
                    getImages();
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Error', 'User has already Voted!', 'Error')", true);
                }
            }
        }

        private void getImages()
        {
            using (Data.OpenConection())
            {
                Data.DataReader("SELECT [Party_Name], [Image_Data] FROM [Candidate] WHERE Year = '" + Session["Election"] + "'");
                GridView1.DataSource = Data.dr;
                GridView1.DataBind();
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
                        Session["StartDate"] = Data.dr.GetValue(2);
                        Session["EndDate"] = Data.dr.GetValue(3);
                    }
                }
            }
            Data.CloseConnection();
        }

        protected void Vote_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["Status"].ToString() == "N")
                {


                    int rowIndex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
                    string PartyName = GridView1.Rows[rowIndex].Cells[0].Text;
                    using (Data.OpenConection())
                    {
                        Data.DataReader("SELECT * FROM [Candidate] WHERE Party_Name = '" + PartyName + "'");
                        if (Data.dr.HasRows)
                        {
                            while (Data.dr.Read())
                            {
                                Session["PartyId"] = Data.dr.GetValue(0);
                                Session["Vote_Count"] = Data.dr.GetValue(3);
                            }

                        }
                        Data.CloseConnection();
                    }
                    UpdateVoterStatus();
                    Response.Redirect("PRvote.aspx");
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Error', 'User has already Voted!', 'Error')", true);
                }
            }
            catch
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Error', 'Page was not found, please try again', 'Error')", true);
            }
        }

        private void getElectionByDate()
        {
            DateTime startDate = Convert.ToDateTime(Session["StartDate"]);
            DateTime endDate = Convert.ToDateTime(Session["EndDate"]);
            DateTime date = Convert.ToDateTime(DateTime.Now);
            if (date < endDate && date > startDate)
            {
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Error', 'The elections are now Closed!', 'Error')", true);
                Response.Redirect("Home.aspx");
            }
        }

        private void vote()
        {
            int Vote = Convert.ToInt32(Session["Vote_Count"]) + 1;
            using (Data.OpenConection())
            {
                Data.ExecuteQueries("UPDATE [Candidate] SET Vote_Count = '" + Vote + "' WHERE Candidate_ID = '" + Session["PartyId"] + "'");
            }
            Data.CloseConnection();
        }
        private void UpdateVoterStatus()
        {
            vote();
            using (Data.OpenConection())
            {
                Data.ExecuteQueries("UPDATE [Citizens] SET Vote_Status = '" + "Voted" + "' WHERE Citizen_ID = '" + Session["Citizen_ID"] + "'");
            }
            Data.OpenConection();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Success', 'You have Successfully Voted!!', 'success')", true);
        }

    }
}