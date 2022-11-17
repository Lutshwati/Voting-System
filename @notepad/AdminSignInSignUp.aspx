<%@ Page Title="" Language="C#" MasterPageFile="Main.Master" AutoEventWireup="true" CodeFile="AdminSignInSignUp.aspx.cs" Inherits="Voting_System.Solution.Code.HTML._SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <br/>
      <div class="container box" id="container">
	<div class="form-container sign-up-container">
		<forms action="#">
			<h1>Create Account</h1><br/>
                        <div class="row">
                          <div class="col-md-6">
			    <input class="txt" type="text" placeholder="First Name" />
			    <input class="txt" type="email" placeholder="Email" />
                          </div>
                          <div class="col-md-6">
                            <input class="txt" type="text" placeholder="Last Name"/>
			    <input class="txt" type="Number" placeholder="Employee Number" />
                          </div>
                            <input class="txt"  placeholder="Password"/>
                            <input class="txt"  placeholder="Confirm Password"/>
                        </div><br/>
			<button class="sub_btn">Sign Up</button>
		</forms>
	</div>
	<div class="form-container sign-in-container">
		<forms action="#">
			<h1>Sign in</h1>

			<input class="txt" type="Number" placeholder="Employee Number" />
			<input class="txt" type="password" placeholder="Password..." id="myPassword">
                        <input class="showpas" type="checkbox" onclick="displayPassword()"><span class="checkboxText">Show Password</span>
			<a href="#">Forgot your password?</a>
			<button class="sub_btn">Sign In</button>
		</forms>
	</div>
        
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back Admin</h1>
				<p>If you already have an existing account, please click the below button.</p>
                                <a class="ghost sub_btn" id="signIn">Sign In</a>
		
                        </div>
			<div class="overlay-panel overlay-right">
				<h1>Administrator</h1>
				<p>Don't have an Account ? Click the below button to Create one.</p>
                                <a class="ghost sub_btn" id="signUp">Sign Up</a>
			
                        </div>
		</div>
	</div>
</div>



<script>

const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () => {
	container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
	container.classList.remove("right-panel-active");
});


function displayPassword() {
  var x = document.getElementById("myPassword");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}

</script>
</asp:Content>