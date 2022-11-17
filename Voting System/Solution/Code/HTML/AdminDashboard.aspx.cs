using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Configuration;
using System.IO;
using System.Web.UI.DataVisualization.Charting;

namespace Voting_System.Solution.Code.HTML
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        DatabaseConnection data = new DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                data.Link();
                getGender();
                getStatus();
            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("SignIn.aspx");
        }

        private void getGender()
        {
            data.Link();
            using (data.OpenConection())
            {
                data.DataReader("Select * From [Citizens] Order By Gender");
                GridList.DataSource = data.dr;
                GridList.DataBind();
            }
            data.CloseConnection();
        }

        private void getStatus()

        {
            data.Link();
            using (data.OpenConection())
            {
                data.DataReader("Select * From [Citizens] Order By Vote_Status");
                GridView1.DataSource = data.dr;
                GridView1.DataBind();
            }
            data.CloseConnection();
        }
    }
}