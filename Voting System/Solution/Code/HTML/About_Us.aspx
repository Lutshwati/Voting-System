<%@ Page Title="" Language="C#" MasterPageFile="~/Solution/Code/HTML/Main.Master" AutoEventWireup="true" CodeBehind="About_Us.aspx.cs" Inherits="Voting_System.Solution.Code.HTML.About_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="panel" style="background-color:lightblue !important;">
        <center>
        <div>
            <h3>About Us</h3>
        </div>
        </center>
    </section>
    <%--Content--%>
    <section id="Content"style="padding:70px;">
        <hr />
        <center>
        <H3><b>Mission, Vision and Values</b></H3>
        </center>
        <hr />
        <p>
            Electronic voting, also known as e-voting is a type of voting that uses electronic means to help or take care of ballot casting and counting. The online voting system is a system that will help make voting easier. Our team is going to create online elections, we are going to create online ballots, generate electoral roll and launch online elections. We want to develop a system where a user can be able to vote using their cellphone or pc instead of going to the voting station. In the existing voting system users go to the voting station and present their ID and they will be checked whether they qualify to vote. In this system we want to create a voting system where a user will enter their ID number and the system will check whether the user is registered and if they qualify to vote. The system is going to be used by wards in Buffalo City in order to vote for councilor and the mayoral committee. In the app there will be 2 ballots, a ballot for the counsellor position and a ballot for the mayoral committee.
        </p>

        <hr /><div class="row">

            <div class="col-md-6">
                <center>
                    <h4>Opportunities</h4>
                    </center>
                    <hr />
                    <p>
                        1. Faster voting for all.<br />
                        2. Allows registered personel to vote.<br />
                        3. Allows multiple choices to vote for.<br />
                        4. Automated counting of votes.<br />
                    </p>
                
                
            </div>
            <div class="col-md-6" style="border-top:none; border-right:none; border-bottom:none; border-left:thick;">
                <center>
                    <h4>Product Functions</h4>
                </center>
                <hr />
                <p>
                     The system will provide a user register page and log in page. Menu option or navigation with Help, about us, more info, and Contact option. An option to continue voting. Address validation. Options for voting. Vote confirmation. Voting receipt. Party survey. User comments. User expectations for the chosen party. User survey on user experience. And more.
                </p>
            </div>

              </div>

    </section>

</asp:Content>
