using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Voting_System.Solution.Code.HTML
{
    public partial class PRvote : System.Web.UI.Page
    {
        DatabaseConnection Data = new DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                getImages();
            }
        }

        private void getImages()
        {
            using (Data.OpenConection())
            {
                Data.DataReader("SELECT [Party_Name], [Image_Data] FROM [Candidate]");
                GridView1.DataSource = Data.dr;
                GridView1.DataBind();
            }
        }

        protected void Vote_Click(object sender, EventArgs e)
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
                        Session["PRCandidate"] = Data.dr.GetValue(0);
                        Session["PRVotes"] = Data.dr.GetValue(4);
                    }

                }
                Data.CloseConnection();
            }
            UpdateVoterStatus();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Success', 'You have Successfully Voted! for PR', 'success')", true);
            Response.Redirect("Home.aspx");

        }
        private void vote()
        {
            int Vote = Convert.ToInt32(Session["PRVotes"]) + 1;
            using (Data.OpenConection())
            {
                Data.ExecuteQueries("UPDATE [Candidate] SET PRVotes = '"+Vote+"' WHERE Candidate_ID = '"+ Session["PRCandidate"] + "'");
            }
            Data.CloseConnection();
        }
        private void UpdateVoterStatus()
        {
            vote();
            using (Data.OpenConection())
            {
                Data.ExecuteQueries("UPDATE [Citizens] SET PRVote_Status = '" + "Voted" + "' WHERE Citizen_ID = '" + Session["Citizen_ID"] + "'");
            }
            Data.OpenConection();
        }

    }
}
