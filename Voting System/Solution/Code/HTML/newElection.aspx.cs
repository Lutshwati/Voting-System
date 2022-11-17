using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Voting_System.Solution.Code.HTML
{
    public partial class newElection : System.Web.UI.Page
    {
        DatabaseConnection data = new DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                data.Link();
            }
        }

        protected void btnSaveElection_Click(object sender, EventArgs e)
        {
            data.Link();
            using (data.OpenConection())
            {
                data.ExecuteQueries("INSERT INTO [Election] (Year, Title, Start, EndTime) VALUES('"+txtDate.Text+"', '"+txtDescr.Text+"', '"+txtStartDate.Text+"', '"+txtEndDate.Text+"')");
            }data.CloseConnection();
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("SignIn.aspx");
        }
    }
}