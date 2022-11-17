<%@ Page Title="" Language="C#" MasterPageFile="~/Solution/Code/HTML/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Voting_System.Solution.Code.HTML.Home" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Sol.CSS/Stylesheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Main">
    <section id="Panel" style="padding:20px;">
       
        <%--part 1 home page--%>
        <center>
        <div class="container-fluid">
            <div class="row">
                <hr />
                <div class="col-md-5" style="background-color:Highlight; border-radius:10px; height:300px;">
                    <%--Our Logo--%>
                    
                
                    <center>
                    <h6 style="font-size:20px;"><b>BCM-EVotes</b></h6>
                    <img src="../../Resources/Pictures/featured-vote.jpg" alt="BCM Logo" style="height:250px; width:257px; border-radius:50%;"/>
                   
                <br /></div>
                <div class="col-md-7" style="height:300px; background-color:red; border-radius:10px;">
                    <%--Video 1--%>
                    <video src="../../Resources/Videos/4.mp4" autoplay loop muted  style="border-radius:40%;box-shadow:0 0 10px grey;position:center; height:100%; width:80%;"></video>                
                    <%--<h1><span style="color:blue;"><b>#</b></span>I Voted</h1>--%>
                </div>
            </div>
        </div>
        
        <hr />
        <%--part 2 Home Page--%>
         <div class="row" style="padding:10px;">
            <%--<p>Click here to Register <asp:Button Text="Register" runat="server" style="background-color:blue; color:white !important;padding-left:15px;padding-right:15px; border-style:inherit;border-top-left-radius:5px; border-top-right-radius:5px; border-bottom-left-radius:5px; border-bottom-right-radius:5px;" /></p>--%>
            <div class="col-md-6" style="padding:10px;">
                <div class="container-fluid" style="border:solid; border-radius:10px; padding:20px; right:5px; border-color: blue;">
                    <hr /><h4>About Us</h4>
                    <hr /><p>
                        Electronic voting, also known as e-voting is a type of voting that uses electronic means to help or take care of ballot casting and counting. The online voting system is a system that will help make voting easier. Our team is going to create online elections, we are going to create online ballots, generate electoral roll and launch online elections.
                          </p><a href="About_Us.aspx"><span style="color:blue; text-decoration:none;">View more...</span></a>
                </div>
            </div>
            <div class="col-md-6" style="padding:10px;">
              <div class="container-fluid" style="border:solid; border-radius:10px; padding:20px; left: 5px; border-color: blue;">
              <hr /> <h4> 1: Find your correct voting station</h4>
              <hr /> <p>
                  Ensure that you have the address for the correct voting station for the voting district in which you are registered. Most voting stations are located in community buildings like local schools, churches or community centres. Where buildings are not available, voting stations are set up in tents in parks or other open land.
              </p><a href="How_To_Vote.aspx"><span style="color:blue; text-decoration:none;">View more...</span></a>
             </div>
            </div>
        </div>
    </section>
    <hr />
   </div>

</asp:Content>
