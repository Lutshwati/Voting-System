<%@ Page Title="" Language="C#" MasterPageFile="~/Solution/Code/HTML/Main.Master" AutoEventWireup="true" CodeBehind="publicInfo.aspx.cs" Inherits="Voting_System.Solution.Code.HTML.publicInfo" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container_3">
        <div class="row">
                <div class="side-panel">
                    <center>
                        <h3>NAVIGATION</h3>
                    </center>
                    <hr id="panel-horizontal" />
                    <asp:HyperLink ID="HyperLink1" NavigateUrl="AdminDashboard.aspx" runat="server" CssClass=" list-group-item list-group-item-action list-group-item-light p-3 ">Dashboard</asp:HyperLink><hr />
                    <asp:HyperLink ID="HyperLink3" NavigateUrl="newElection.aspx" runat="server" CssClass=" list-group-item list-group-item-action list-group-item-light p-3 ">New Election</asp:HyperLink><hr />
                    <asp:HyperLink ID="HyperLink2" NavigateUrl="Add Candidates.aspx" runat="server" CssClass=" list-group-item list-group-item-action list-group-item-light p-3 ">Add Candidates</asp:HyperLink><hr />
                    <asp:Button ID="btnLogOut" runat="server" CssClass=" list-group-item list-group-item-action list-group-item-light p-3 " OnClick="btnLogOut_Click" Text="Sign Out" />
                </div>
            <div class="col-md-10">

            </div>
        </div>
    </div>

</asp:Content>
