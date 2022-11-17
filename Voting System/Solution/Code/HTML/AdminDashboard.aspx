<%@ Page Title="" Language="C#" MasterPageFile="~/Solution/Code/HTML/Main.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Voting_System.Solution.Code.HTML.AdminDashboard" EnableEventValidation="false" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- <link href="../CSS/Sol.CSS/Stylesheet.css" rel="stylesheet" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="lbluserrDetails" runat="server" Text=""></asp:Label>
    <br />


    <div class="container_3">
        <div class="row">
            <div class="col-md-2">
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
            </div>
        </div>
        <div class="col-md-10">
            <div class="row Dash">
                <div class="col-md-2 border-right"></div>
                <div class="col-md-8 border-right">
                    <div class="row">
                        <div class="col-md-6">
                            <center>
                                <h4>List of registered Citizens</h4>
                            </center>
                            <div class="col-md-12">
                                <asp:GridView
                                    ID="GridList"
                                    runat="server"
                                    AutoGenerateColumns="False"
                                    BackColor="#FFF8EA"
                                    BorderColor="black"
                                    BorderStyle="Solid"
                                    BorderWidth="1px"
                                    CellPadding="4"
                                    CellSpacing="2"
                                    ForeColor="Black"
                                    GridLines="Both">

                                    <columns>
                                        <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" />
                                        <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" />
                                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" />
                                    </columns>
                                    <footerstyle backcolor="#AC4425" />
                                    <headerstyle backcolor="#AC4425"
                                        font-bold="True"
                                        forecolor="White" />
                                    <pagerstyle backcolor="#CCCCCC"
                                        forecolor="Black"
                                        horizontalalign="Left" />
                                    <rowstyle backcolor="#FFF8EA"
                                        bordercolor="#AC4425"
                                        borderstyle="Solid"
                                        borderwidth="1px" />

                                    <selectedrowstyle backcolor="#000099"
                                        font-bold="True"
                                        forecolor="White" />
                                    <sortedascendingcellstyle backcolor="#F1F1F1" />
                                    <sortedascendingheaderstyle backcolor="#808080" />
                                    <sorteddescendingcellstyle backcolor="#CAC9C9" />
                                    <sorteddescendingheaderstyle backcolor="#383838" />
                                </asp:GridView>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <asp:GridView
                                ID="GridView1"
                                runat="server"
                                AutoGenerateColumns="False"
                                BackColor="#FFF8EA"
                                BorderColor="black"
                                BorderStyle="Solid"
                                BorderWidth="1px"
                                CellPadding="4"
                                CellSpacing="2"
                                ForeColor="Black"
                                GridLines="Both">

                                <columns>
                                    <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="Vote_Status" HeaderText="Status" SortExpression="Status" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" />
                                </columns>
                                <footerstyle backcolor="#AC4425" />
                                <headerstyle backcolor="#AC4425"
                                    font-bold="True"
                                    forecolor="White" />
                                <pagerstyle backcolor="#CCCCCC"
                                    forecolor="Black"
                                    horizontalalign="Left" />
                                <rowstyle backcolor="#FFF8EA"
                                    bordercolor="#AC4425"
                                    borderstyle="Solid"
                                    borderwidth="1px" />

                                <selectedrowstyle backcolor="#000099"
                                    font-bold="True"
                                    forecolor="White" />
                                <sortedascendingcellstyle backcolor="#F1F1F1" />
                                <sortedascendingheaderstyle backcolor="#808080" />
                                <sorteddescendingcellstyle backcolor="#CAC9C9" />
                                <sorteddescendingheaderstyle backcolor="#383838" />
                            </asp:GridView>
                        </div>
                    </div>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </div>

</asp:Content>
