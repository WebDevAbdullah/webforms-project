<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="Project1.Settings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<main class="col-md-9 col-lg-10 ms-sm-auto px-md-4">
    <div class="text-center my-4">
        <h1>Settings</h1>
        <p>Manage your account and application preferences.</p>
    </div>

    <div class="row">
    <div class="col-md-6 mx-auto">
        <div class="form-group">
            <label for="user-name">First Name</label>
            <input
            type="text"
            class="form-control"
            id="UserFirstName"
            required
            />
        </div>
          <div class="form-group">
              <label for="user-name">Last Name</label>
              <input
              type="text"
              class="form-control"
              id="UserLastName"
              />
          </div>
        <div class="form-group">
            <label for="user-email">Email</label>
            <input
            type="email"
            class="form-control"
            id="UserEmail"
            />
        </div>
        <div class="form-group">
            <label for="user-password">Password</label>
            <input
            type="password"
            class="form-control"
            id="UserPassword"
            />
        </div>

        <div class="form-group">
            <label for="notifications">Notifications</label>
            <select class="form-control" id="notifications">
            <option value="enabled">Enabled</option>
            <option value="disabled">Disabled</option>
            </select>
        </div>

        <div class="form-group">
            <label for="theme">Theme</label>
            <select class="form-control" id="theme">
            <option value="light">Light</option>
            <option value="dark">Dark</option>
            </select>
        </div>

        <button type="submit" class="btn btn-primary">
            Save Changes
        </button>
    </div>
    <div class="col-md-6 mx-auto my-4">
        <h3>Generate Report</h3>
        <p>Select a format to download your financial report:</p>
        <button class="btn btn-primary" onclick="generateReport('pdf')">
        Download PDF
        </button>
        <button
        class="btn btn-success ml-2"
        onclick="generateReport('excel')"
        >
        Download Excel
        </button>
        <button class="btn btn-info mt-3" onclick="generateReport('csv')">
        Download CSV
        </button>
    </div>
    </div>
</main>
</asp:Content>
