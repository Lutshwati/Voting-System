<%@ Page Title="" Language="C#" MasterPageFile="~/Solution/Code/HTML/Main.Master" AutoEventWireup="true" CodeBehind="Add Candidates.aspx.cs" Inherits="Voting_System.Solution.Code.HTML.manageWards" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Sol.CSS/mngWards.css" rel="stylesheet" />
    <%--<link href="../CSS/Sol.CSS/Stylesheet.css" rel="stylesheet" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container_3">
        <div class="row">
            <div class="col-md-2">
                <div class="side-panel">
                    <center>
                        <h3>NAVIGATION</h3>
                    </center>
                    <hr id="panel-horizontal" />
                    <asp:HyperLink ID="HyperLink3" NavigateUrl="newElection.aspx" runat="server" CssClass=" list-group-item list-group-item-action list-group-item-light p-3 ">New Election</asp:HyperLink><hr />
                    <asp:HyperLink ID="HyperLink2" NavigateUrl="Add Candidates.aspx" runat="server" CssClass=" list-group-item list-group-item-action list-group-item-light p-3 ">Add Candidates</asp:HyperLink><hr />
                    <asp:Button ID="btnLogOut" runat="server" CssClass=" list-group-item list-group-item-action list-group-item-light p-3 " OnClick="btnLogOut_Click" Text="Sign Out" />
                </div>
            </div>

            <div class="col-md-10 pt-5">

                <div class="row">
                    <div class="col-md-3 border-right" ></div>
                    <div class="col-md-6 border-right pt-4">
                        <div class="col-md-12">
                            <center>
                                <h3>Add Political Organisation</h3>
                                <hr />
                            </center>
                        </div>
                        <div class="col-md-12">
                            <p class="lbl">Party</p>
                            <asp:TextBox class="form-control" ID="Party" runat="Server" PlaceHolder="Party"></asp:TextBox><br />
                        </div>
                        <div class="col-md-12">
                            <asp:FileUpload class="form-control" ID="upload" runat="Server"></asp:FileUpload><br />
                        </div>
                        <div class="col-md-12">
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label><br />
                        </div>
                        <div class="col-md-12">
                            <asp:Button class="btn btn-primary" ID="savebtn" runat="Server" Width="250px" OnClick="savebtn_Click" Text="Save"></asp:Button>
                        </div>
                    </div>
                    <div class="col-md-3"></div>
                </div>
            </div>

            <%-- col-10 --%>
        </div>

        <%-- container-row --%>
    </div>
</asp:Content>
