<%@ Page Title="" Language="C#" MasterPageFile="Main.Master" AutoEventWireup="true" CodeFile="adminDashBoard.aspx.cs" Inherits="Voting_System.Solution.Code.HTML.AdDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container_3">
<div class="side-panel">
<h3>My Side panel</h3><hr id="panel-horizontal"/>
<a href="AdminDashboard.aspx" class="panel-link" >New Election</a><br/><br/>
<a href="manageWards.aspx" class="panel-link">Add Candidates</a><br/><br/>
<a href="publicInfo.aspx" class="panel-link">Public-Information</a><br/><br/>
<a href="#" class="panel-link">Log Out</a><br/><br/>
</div>

<div class="Election">
<div class="ElectionBox">
<h1>New Election</h1>
<hr/>
<h7>Election ID     :</h7>&nbsp
<asp:TextBox runat="Server" Class="ElectEntry" ID="ElectionNum" PlaceHolder="Enter Number" Type="Number"></asp:TextBox><br/>
<h7>Election Topic  :</h7>
<asp:TextBox runat="Server" Class="ElectEntry" ID="ElectionTopic" Type="Text"></asp:TextBox><br/>
<h7>Election Status :</h7>
<asp:Button runat="Server" OnClick="TurnOn_Click" Class="btnStatus" ID="ElectionStatus" Text="On"></asp:Button>
</div>
</div>








</div>


</asp:Content>