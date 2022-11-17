<%@ Page Title="" Language="C#" MasterPageFile="Main.Master" AutoEventWireup="true" CodeFile="manageWards.aspx.cs" Inherits="Voting_System.Solution.Code.HTML._manageWards" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container_3">
<div class="row">
<div class="col-md-2">
<div class="side-panel">
<h3>My Side panel</h3><hr id="panel-horizontal"/>
<a href="AdminDashboard.aspx" class="panel-link" >New Election</a><br/><br/>
<a href="manageWards.aspx" class="panel-link">Add Candidates</a><br/><br/>
<a href="publicInfo.aspx" class="panel-link">Public-Information</a><br/><br/>
<a href="#" class="panel-link">Log Out</a><br/><br/>
</div>
</div>

<div class="col-md-10">

<div class="row _num2">

<div class="col-md-6 _CandDetails">
<h3>Fill Candidate Details</h3><hr/>
<div class="row">

<div class="col-md-6">
<asp:Label runat="Server" Text="Ward Number :"></asp:Label>
<asp:TextBox class="_canDetail" runat="Server" Type="Number" PlaceHolder="Ward Number" ></asp:TextBox>
</div>
<div class="col-md-6 _>
<br/><br/>
<asp:TextBox class="_canDetail" runat="Server" PlaceHolder=" First Name" ></asp:TextBox><br/>
<asp:TextBox class="_canDetail" runat="Server" PlaceHolder=" First Name" ></asp:TextBox><br/>
<asp:TextBox class="_canDetail" runat="Server" PlaceHolder=" Last Name" ></asp:TextBox><br/>
<asp:TextBox class="_canDetail" runat="Server" Type="Number" PlaceHolder=" Phone Number" ></asp:TextBox><br/>
<asp:TextBox class="_canDetail" runat="Server" PlaceHolder=" Party Name" ></asp:TextBox><br/>
<asp:FileUpload class="_btncand" ID="upload" runat="Server"></asp:FileUpload><br/><br/>
<asp:Button class="_btnsub" ID="savebtn" runat="Server" Text="Save"></asp:Button>
</div>


</div>

</div>

<div class="col-md-6">
<center>
<h3>Preview Candidate Details</h3>
</center>
<hr/>
<center>
<asp:Image runat="Server" class="_candImage" alt="Candidate Image"/><br/>
</center>
<h7>Full Name :</h7>&nbsp<asp:Label runat="server" ID="_candNames" Text="Eza Lutshwati"></asp:Label><br/>
<h7>Contact Number :</h7>&nbsp<asp:Label runat="server" ID="_candContact" Text="0781527083"></asp:Label><br/>
<h7>Party Name :</h7>&nbsp<asp:Label runat="server" ID="_candParty" Text="Action SA"></asp:Label>

<%-- Preview closing tag --%>
</div>

</div>

<%-- col-10 --%>
</div>

<%-- container-row --%>
</div>


<%-- container closing tag --%>
</div>


</asp:Content>