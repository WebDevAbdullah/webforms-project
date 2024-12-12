<%@ Page Title="" Language="C#" MasterPageFile="~/Registration.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Project1.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .signup-container {
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: #f8f9fa;
        width: 100%;
        }

        .signup-card {
        width: 100%;
        max-width: 600px;
        padding: 16px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        border-radius: 10px;
        }

        .form-control,
        .btn-primary {
        border-radius: 5px;
        }
        .w-45 {
            width: 45%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="signup-container">
    <div class="card signup-card">
        <div class="card-body">
            <h3 class="card-title text-center mb-4">Sign Up</h3>


            <div class="d-flex flex-row justify-content-between mb-3">
                <div class="w-45">
                    <div class="form-label">First Name</div>
                    <asp:TextBox ID="TBFirstName" runat="server" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" ErrorMessage="First name is required." ControlToValidate="TBFirstName" CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>
                <div class="w-45">
                    <div class="form-label">Last Name</div>
                    <asp:TextBox ID="TBLastName" runat="server" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="LastNameValidator" runat="server" ErrorMessage="Last name is required." ControlToValidate="TBLastName" CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>
            </div>
            
            <div class="form-label">Email Address</div>
            <div>
                <asp:TextBox ID="TBEmail" runat="server" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ErrorMessage="Email is required." ControlToValidate="TBEmail" CssClass="text-danger"></asp:RequiredFieldValidator>
            </div>
            
            <div class="form-label">Password</div>
            <div>
                <asp:TextBox ID="TBPassword" runat="server" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ErrorMessage="Password is required." ControlToValidate="TBPassword" CssClass="text-danger"></asp:RequiredFieldValidator>
            </div>
            
            <div class="form-label">Confirm Password</div>
            <div>
                <asp:TextBox ID="TBConfirmPassword" runat="server" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ConfirmPasswordValidator" runat="server" ErrorMessage="Password conformation is required" ControlToValidate="TBConfirmPassword" CssClass="text-danger"></asp:RequiredFieldValidator>
            </div>
            
            <div class="my-3">
                <asp:CheckBox ID="CBTerms" runat="server" />
                <span>I agree to the <a href="#">Terms and Conditions</a></span>
            </div>
            
            <div>
                <asp:Button ID="BSignUp" runat="server" Text="Sign Up" class="btn btn-primary w-100" OnClick="BSignUp_Click"/>
            </div>
            
            <div class="text-center mt-3">
                Already have an account? <a href="SignIn.aspx">Sign In</a>
            </div>
            <asp:Label ID="LCheckEmail" runat="server" Text=""></asp:Label>
        </div>
    </div>
</div>
</asp:Content>
