<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Voting_System.Solution.Code.HTML.SignIn" %>

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

        <div class="container" id="container">
            <div class="row">
                <div class="col-md-3" style="background-color: transparent;"></div>
                <div class="col-md-6" style="background-color: antiquewhite; padding: 10px;">
                    <div class="row">
                        <div class="col-md-12">
                            <center>
                                <img src="../../Resources/Pictures/featured-vote.jpg" width="120px" height="120px" style="border-radius: 50%;" />
                                <h1>Login</h1>
                            </center>
                        </div>
                        <br />
                        <div class="col-md-12">
                            <asp:DropDownList ID="drpUserSignIn" CssClass="form-control" runat="server">
                                <asp:ListItem>-- Select User --</asp:ListItem>
                                <asp:ListItem>Citizen</asp:ListItem>
                                <asp:ListItem>Admin</asp:ListItem>
                            </asp:DropDownList><br />
                        </div>
                        <br />
                        <div class="col-md-12">
                            <asp:TextBox runat="server" class="form-control" ID="LogUser" type="Text" placeholder="User Name" required=""></asp:TextBox><br />
                        </div>
                        <br />
                        <div class="col-md-12">
                            <asp:TextBox runat="server" class="form-control" type="password" placeholder="Password" ID="LogPassword" required=""></asp:TextBox><br />
                        </div>
                        <hr />
                        <div class="col-md-12">
                            <center>
                                <asp:Button class="sub_btn active btn-primary" runat="server" ID="LogInbtn" ForeColor="white" OnClick="LogInbtn_Click" Width="150px" Text="Login"></asp:Button>
                            </center>
                        </div>
                        <hr />

                        <div class="col-md-12">
                            <center>
                                <asp:HyperLink ID="myBtn" runat="server">Forgot Password ?</asp:HyperLink>
                                <a href="SignUp.aspx" class="">Create account</a>
                                <div id="myModal" class="modal">

                                    <!-- Modal content -->
                                    <div class="modal-content">
                                        <span class="close">&times;</span>
                                        <p>To recover your password</p>
                                        <br />
                                        <p>Email at : pneumatix91@gmail.com</p>
                                        <br />
                                        <p>Or Contact : 0631752439</p>
                                    </div>

                                </div>
                            </center>
                        </div>
                    </div>
                </div>
                <div class="col-md-3" style="background-color: transparent;"></div>
            </div>
        </div>
    </form>


    <script>
        // Get the modal
        var modal = document.getElementById("myModal");

        // Get the button that opens the modal
        var btn = document.getElementById("myBtn");

        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];

        // When the user clicks the button, open the modal 
        btn.onclick = function () {
            modal.style.display = "block";
        }

        // When the user clicks on <span> (x), close the modal
        span.onclick = function () {
            modal.style.display = "none";
        }

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>

</body>
</html>
