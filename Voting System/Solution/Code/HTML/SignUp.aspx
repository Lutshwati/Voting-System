<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Voting_System.Solution.Code.HTML.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link href="../CSS/Sol.CSS/Stylesheet.css" rel="stylesheet" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="../CSS/Bundle/js/bootstrap.bundle.min.js"></script>
    <script src="../CSS/datatables/js/jquery.dataTables.min.js"></script>
    <script src="../CSS/fontawsome/js/all.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" id="_inputCover">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8" style="background-color: antiquewhite; padding: 10px;">
                    <div class="col-md-12">
                        <center>
                            <img src="../../Resources/Pictures/featured-vote.jpg" width="120px" height="120px" style="border-radius: 50%;" />
                            <h1 id="_regHead">Fill in the form to register</h1>
                        </center>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-md-12">
                                    <asp:TextBox runat="server" ID="first_name" class="form-control" PlaceHolder="First Name"></asp:TextBox><br />
                                </div>
                                <div class="col-md-12">
                                    <asp:TextBox runat="server" ID="last_name" class="form-control" PlaceHolder="Last Name"></asp:TextBox><br />
                                </div>
                                <div class="col-md-12">
                                    <asp:TextBox runat="server" ID="user_name" class="form-control" PlaceHolder="User Name"></asp:TextBox><br />
                                </div>
                                <div class="col-md-12">
                                    <asp:TextBox runat="server" ID="identityNum" class="form-control" PlaceHolder="Identity Number"></asp:TextBox><br />
                                </div>
                                <div class="col-md-12">
                                    <asp:DropDownList runat="server" ID="txtGender" class="form-control">
                                        <asp:ListItem>Female</asp:ListItem>
                                        <asp:ListItem>Male</asp:ListItem>
                                    </asp:DropDownList><br />
                                </div>
                                <div class="col-md-12">
                                    <asp:TextBox runat="server" ID="contact_num" class="form-control" PlaceHolder="Contact Number"></asp:TextBox><br />
                                </div>
                                <div class="col-md-12">
                                    <asp:TextBox runat="server" ID="mail" class="form-control" PlaceHolder="Email"></asp:TextBox><br />
                                </div>
                                <div class="col-md-12">
                                    <asp:TextBox runat="server" ID="RegPassword" class="form-control" PlaceHolder="Password"></asp:TextBox><br />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-md-12">
                                    <asp:TextBox runat="server" ID="Add_Street" class="form-control" PlaceHolder="Street"></asp:TextBox><br />
                                </div>
                                <div class="col-md-12">
                                    <asp:TextBox runat="server" ID="Add_Building" class="form-control" PlaceHolder="Building"></asp:TextBox><br />
                                </div>
                                <div class="col-md-12">
                                    <asp:TextBox runat="server" ID="Add_City" class="form-control" PlaceHolder="City"></asp:TextBox><br />
                                </div>
                                <div class="col-md-12">
                                    <asp:TextBox runat="server" ID="Add_Ward" class="form-control" PlaceHolder="Ward"></asp:TextBox><br />
                                </div>
                                <div class="col-md-12">
                                    <asp:TextBox runat="server" ID="Add_Province" class="form-control" PlaceHolder="Province"></asp:TextBox><br />
                                </div>
                                <div class="col-md-12">
                                    <asp:TextBox runat="server" ID="Add_Zip" class="form-control" PlaceHolder="Zip/Postal Code"></asp:TextBox><br />
                                </div>
                            </div>
                            <div class="col-md-12">
                            </div>
                        </div>
                    </div>
                    <center>
                        <asp:Button runat="server" class="btn active btn-primary" Text="Register" OnClick="Unnamed_Click" Width="250px" /><br />
                        <a href="SignIn.aspx" class="">Already have an account?</a>
                    </center>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
    </form>
</body>
</html>
