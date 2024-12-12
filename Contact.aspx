<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Project1.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<main class="col-md-9 col-lg-10 ms-sm-auto px-md-4">
    <div class="text-center my-4">
        <h1>Contact Us</h1>
        <p>We would love to hear from you!</p>
        <div class="card p-4">
            <h2 class="card-title">Get in Touch</h2>
            <div class="form-group">
                <asp:TextBox ID="TBEmail" runat="server" CssClass="form-control mb-2">Your Email</asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="TBSubject" runat="server" CssClass="form-control mb-2">Your Subject</asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="TBMessage" runat="server" CssClass="form-control mb-2" Height="200px">Your Message</asp:TextBox>
            </div>
            <asp:Button ID="btnSendEmail" runat="server" Text="Send Message" CssClass="btn btn-primary btn-block" OnClick="btnSendEmail_Click" />
            <asp:Label ID="LResult" runat="server" Text="Hello" CssClass="fw-bold fs-1 text-danger"></asp:Label>
        </div>
    </div>
</main>
</asp:Content>
