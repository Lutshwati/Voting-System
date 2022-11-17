<%@ Page Title="" Language="C#" MasterPageFile="~/Solution/Code/HTML/Main.Master" AutoEventWireup="true" CodeBehind="newElection.aspx.cs" Inherits="Voting_System.Solution.Code.HTML.newElection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container_3">
                <div class="side-panel">
                    <center>
                        <h3>NAVIGATION</h3>
                    </center>
                    <hr id="panel-horizontal" />
                    <asp:HyperLink ID="HyperLink3" NavigateUrl="newElection.aspx" runat="server" CssClass=" list-group-item list-group-item-action list-group-item-light p-3 ">New Election</asp:HyperLink><hr />
                    <asp:HyperLink ID="HyperLink2" NavigateUrl="Add Candidates.aspx" runat="server" CssClass=" list-group-item list-group-item-action list-group-item-light p-3 ">Add Candidates</asp:HyperLink><hr />
                    <asp:Button ID="btnLogOut" runat="server" CssClass=" list-group-item list-group-item-action list-group-item-light p-3 " OnClick="btnLogOut_Click" Text="Sign Out" />
                </div>
        <div class="Election">
            <div class="row">
                <div class="col-md-2 border-right"></div>
                <div class="col-md-8">
                    <div class="col-md-12 border-right">
                        <center>
                            <h1>Add New Election</h1>
                        </center>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-6">
                            <p>Title</p>
                            <asp:TextBox Class="form-control" ID="txtDescr" runat="server" PlaceHolder="New Election Name" Text="Annual Elections" Width="367px" Height="39px"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <p>Year</p>
                            <asp:DropDownList Class="form-control" runat="server" ID="txtDate" TextMode="Date" required="">
                                <asp:ListItem>-- Select Year --</asp:ListItem>
                                <asp:ListItem>2020</asp:ListItem>
                                <asp:ListItem>2021</asp:ListItem>
                                <asp:ListItem>2022</asp:ListItem>
                                <asp:ListItem>2023</asp:ListItem>
                                <asp:ListItem>2024</asp:ListItem>
                                <asp:ListItem>2025</asp:ListItem>
                                <asp:ListItem>2026</asp:ListItem>
                                <asp:ListItem>2027</asp:ListItem>
                                <asp:ListItem>2028</asp:ListItem>
                                <asp:ListItem>2029</asp:ListItem>
                                <asp:ListItem>2030</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-6">
                            <p>Start Date & Time</p>
                            <asp:TextBox Class="form-control" runat="server" ID="txtStartDate" TextMode="DateTimeLocal"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <p>End Date & Time</p>
                            <asp:TextBox Class="form-control" runat="server" ID="txtEndDate" TextMode="DateTimeLocal"></asp:TextBox><br />
                        </div>
                    </div>
                    <hr />
                    <div class="col-md-12">
                        <center>
                            <asp:Button ID="btnSaveElection" runat="server" Text="Add Election" OnClick="btnSaveElection_Click" CssClass="btn btn-primary" Width="250px" />
                        </center>
                    </div>
                    <hr />
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </div>
</asp:Content>
