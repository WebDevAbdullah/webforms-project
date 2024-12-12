<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Expenses.aspx.cs" Inherits="Project1.Expenses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<main class="col-md-9 col-lg-10 ms-sm-auto px-md-4">
    <div class="mt-4">
    <h1>Expenses</h1>
    <p>Track your expenses here.</p>
    <div class="card p-4">
        <h2 class="card-title">Add Expense</h2>
        <div class="form-group">
        <input
            type="text"
            id="expense-name"
            class="form-control mb-2"
            placeholder="Expense Name"
            required
        />
        </div>
        <div class="form-group">
        <input
            type="text"
            id="expense-description"
            class="form-control mb-2"
            placeholder="Description"
            required
        />
        </div>
        <div class="form-group">
        <input
            type="number"
            id="expense-amount"
            class="form-control mb-2"
            placeholder="Amount"
            required
        />
        </div>
        <div class="form-group">
        <input
            type="text"
            id="expense-category"
            class="form-control mb-2"
            placeholder="Category"
            required
        />
        </div>
        <div class="form-group">
        <input
            type="date"
            id="expense-date"
            class="form-control mb-2"
            required
        />
        </div>
        <asp:Button ID="AddExpense" runat="server" Text="Add Expense" CssClass="btn btn-primary btn-block" OnClick="AddExpense_Click" />
    </div>
    <h2>Filter Expenses</h2>
    <div class="form-row mb-3">
        <div class="form-group col-md-4">
        <label for="filter-category-expense">Category</label>
        <select id="filter-category-expense" class="form-control">
            <option value="">All</option>
            <option value="Food">Food</option>
            <option value="Utilities">Utilities</option>
            <option value="Rent">Rent</option>
        </select>
        </div>
        <div class="form-group col-md-4">
        <label for="min-amount-expense">Min Amount</label>
        <input
            type="number"
            id="min-amount-expense"
            class="form-control"
            placeholder="0"
        />
        </div>
        <div class="form-group col-md-4">
        <label for="max-amount-expense">Max Amount</label>
        <input
            type="number"
            id="max-amount-expense"
            class="form-control"
            placeholder="0"
        />
        </div>
    </div>
    <button class="btn btn-primary" id="filter-expense-button">
        Filter
    </button>
    <button class="btn btn-secondary" id="reset-expense-button">
        Reset
    </button>
    </div>
    <h2 class="mt-4">Expense List</h2>
    <ul id="expense-list" class="list-group mb-4"></ul> 

    <h3>Total Expenses: $<span id="total-expenses">0.00</span></h3>
</main>
</asp:Content>
