<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Project1.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<main class="col-md-9 col-lg-10 ms-sm-auto px-md-4">
    <div class="text-center my-4">
        <h1>Welcome to Your Expense Tracker!</h1>
        <p>Your one-stop solution to manage your finances effectively.</p>
    </div>

    <div class="row mt-4">
    <div class="col-md-4">
        <div class="card text-white bg-success mb-3">
            <div class="card-header">Total Income</div>
            <div class="card-body">
                <h5 class="card-title" id="total-income">$0.00</h5>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card text-white bg-danger mb-3">
        <div class="card-header">Total Expenses</div>
        <div class="card-body">
            <h5 class="card-title" id="total-expenses">$0.00</h5>
        </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card text-white bg-info mb-3">
        <div class="card-header">Current Savings</div>
        <div class="card-body">
            <h5 class="card-title" id="current-savings">$0.00</h5>
        </div>
        </div>
    </div>
    </div>

    <div class="text-center mt-4">
        <h2>Quick Links</h2>
        <a href="expenses.html" class="btn btn-primary mx-2">Add Expense</a>
        <a href="incomes.html" class="btn btn-success mx-2">Add Income</a>
        <a href="goals.html" class="btn btn-warning mx-2">Set Goals</a>
        <a href="statistics.html" class="btn btn-info mx-2">View Statistics</a>
    </div>

    <!-- Recent Transactions Section -->
    <div class="mt-5">
    <h2>Recent Transactions</h2>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Date</th>
            <th>Description</th>
            <th>Amount</th>
            <th>Type</th>
        </tr>
        </thead>
        <tbody id="recent-transactions">
        <!-- Recent transactions will be populated here -->
        </tbody>
    </table>
    </div>

    <!-- Goals Summary Section -->
    <div class="mt-5">
    <h2>Goals Summary</h2>
    <ul class="list-group" id="goals-summary">
        <!-- Goals summary will be populated here -->
    </ul>
    </div>

    <!-- Financial Tips Section -->
    <div class="mt-5">
    <h2>Financial Tips</h2>
    <div class="alert alert-info">
        <p>
        Start budgeting today! Track your spending to know where your
        money goes.
        </p>
    </div>
    </div>
</main>
</asp:Content>
