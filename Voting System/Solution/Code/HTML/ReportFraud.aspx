<%@ Page Title="" Language="C#" MasterPageFile="~/Solution/Code/HTML/Main.Master" AutoEventWireup="true" CodeBehind="ReportFraud.aspx.cs" Inherits="Voting_System.Solution.Code.HTML.ReportFraud"  EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="panel" style="background-color:lightblue !important">
        <center>
        <h4><b>Report Electoral Fraud</b></h4>
        </center>
    </section>
    <section id="Content">
        <div class="row">
            <div class="col-md-6">
                <div style="padding:20px;">
                    <p>Complaints will be considered by a panel of relevant experts including those with expertise in media law and social and digital media. They will make recommendations for possible further action for the consideration of the Commission.</p>
                    <h5><b>Such action could include:</b></h5>
                    <p>1. Referring the matter for criminal or civil legal action;</p>
                    <p>2. Requesting social media platforms to remove the offensive material;</p>
                    <p>3. Issuing media statements to alert the public and correct the disinformation.</p>
                </div>
            </div>
            <div class="col-md-6">
                <div style="padding:20px; border:thin; border-bottom:none; border-top:none; border-right:none;">
                    <p>Complaints relating to alleged breaches of the Code of Conduct must be submitted to the Electoral Court or the Directorate for Electoral Offences.</p>
                    <h5><b>The Secretary of the Court, Ms Annerie Vorster, can be contacted on:</b></h5>
                    <p><span><b>Email:</b></span>  Avorster@sca.judiciary.org.za / Annerievorstersca@gmail.com</p>
                    <p><span><b>Telephone:</b></span>  (051) 492-4665</p>
                    <p>The Electoral Commission’s Directorate for Electoral Offences can be reached via email at <span><b>legalservices@elections.org.za</b></span></p>
                </div>
            </div>
         </div>
        <div style="padding:20px;">
            <hr />
            <p>The digital platform is intended for complaints related only to social media and is not intended to replace existing channels and processes for investigating alleged breaches of the Code of Conduct.</p>
        </div>
    </section>
</asp:Content>
