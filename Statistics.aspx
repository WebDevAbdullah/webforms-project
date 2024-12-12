<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Statistics.aspx.cs" Inherits="Project1.Statistics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<main class="col-md-9 col-lg-10 ms-sm-auto px-md-4">
  <div class="text-center my-4">
    <h1>Statistics</h1>
    <p>Analyze your financial data here.</p>
  </div>

  <div class="row">
    <div class="col-md-4">
      <h3>Total Income: $<span id="total-income-stat">0.00</span></h3>
    </div>
    <div class="col-md-4 mr-auto">
      <h3>
        Total Expenses: $<span id="total-expenses-stat">0.00</span>
      </h3>
    </div>
  </div>

  <div class="row mb-5 mt-3">
    <div class="col-md-8 mr-auto">
      <canvas
        id="incomeExpensesChart"
        width="400"
        height="200"
      ></canvas>
    </div>
    <div class="col-md-8 mr-auto mt-5">
      <canvas
        id="expenseCategoryChart"
        width="400"
        height="200"
      ></canvas>
    </div>
  </div>

  <div class="row">
    <div class="col-md-8 mr-auto">
      <canvas id="incomeTrendChart" width="400" height="200"></canvas>
    </div>
  </div>
</main>
</asp:Content>
