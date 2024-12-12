<%@ Page Title="" Language="C#" MasterPageFile="~/Registration.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Project1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    .login-container {
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #f8f9fa;
    width: 100%;
    }

    .login-card {
    width: 100%;
    max-width: 400px;
    padding: 2rem;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    border-radius: 10px;
    }

    .form-control,
    .btn-primary {
    border-radius: 5px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="login-container">
    <div class="card login-card">
        <div class="card-body">
            <h3 class="card-title text-center mb-4">Login</h3>
            <div class="form-label">Email Address</div>
            <div>
                <asp:TextBox ID="TBEmail" runat="server" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ControlToValidate="TBEmail" ErrorMessage="Email is required." CssClass="text-danger"></asp:RequiredFieldValidator>
            </div>
            <div class="form-label">Password</div>
            <div>
                <asp:TextBox ID="TBPassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVPassword" runat="server" ControlToValidate="TBPassword" ErrorMessage="Password is required." CssClass="text-danger"></asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:CheckBox ID="CBRemember" runat="server" class=""/>
                <span  class="">Remember me</span>
            </div>
            <div class="mt-2">
                <asp:Button ID="BSignIn" runat="server" Text="Sign In" class="btn btn-primary w-100" OnClick="BSignIn_Click"/>
            </div>
            <div class="mt-2">Don't have an account yet? <a href="SignUp.aspx">Sign Up</a></div>
            <asp:Label ID="LResult" runat="server" Text=""></asp:Label>
        </div>
    </div>
</div>
</asp:Content>
