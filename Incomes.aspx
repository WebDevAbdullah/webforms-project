<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Incomes.aspx.cs" Inherits="Project1.Incomes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<main class="col-md-9 col-lg-10 ms-sm-auto px-md-4">
    <h1>Incomes</h1>
    <p>Track your income sources here.</p>
    <div class="card p-4">
    <h2 class="card-title">Add Income</h2>
    <div class="form-group">
        <input
        type="text"
        id="income-name"
        class="form-control mb-2"
        placeholder="Income Name"
        required
        />
    </div>
    <div class="form-group">
        <input
        type="text"
        id="income-description"
        class="form-control mb-2"
        placeholder="Description"
        required
        />
    </div>
    <div class="form-group">
        <input
        type="number"
        id="income-amount"
        class="form-control mb-2"
        placeholder="Amount"
        required
        />
    </div>
    <div class="form-group">
        <input
        type="text"
        id="income-category"
        class="form-control mb-2"
        placeholder="Category"
        required
        />
    </div>
    <div class="form-group">
        <input
        type="date"
        id="income-date"
        class="form-control mb-2"
        required
        />
    </div>
    <button class="btn btn-primary btn-block" onclick="addIncome()">
        Add Income
    </button>
    </div>
    <div class="mt-4">
    <h2>Filter Incomes</h2>
    <div class="form-row mb-3">
        <div class="form-group col-md-4">
        <label for="filter-category">Category</label>
        <select id="filter-category" class="form-control">
            <option value="">All</option>
            <option value="Salary">Salary</option>
            <option value="Freelance">Freelance</option>
            <option value="Investment">Investment</option>
        </select>
        </div>
        <div class="form-group col-md-4">
        <label for="min-amount">Min Amount</label>
        <input
            type="number"
            id="min-amount"
            class="form-control"
            placeholder="0"
        />
        </div>
        <div class="form-group col-md-4">
        <label for="max-amount">Max Amount</label>
        <input
            type="number"
            id="max-amount"
            class="form-control"
            placeholder="0"
        />
        </div>
    </div>
    <button class="btn btn-primary" id="filter-button">Filter</button>
    <button class="btn btn-secondary" id="reset-button">Reset</button>
    </div>

    <h2 class="mt-4">Income List</h2>
    <ul id="income-list" class="list-group mb-4"></ul>
    <h3>Total Income: $<span id="total-income">0.00</span></h3>
</main>
</asp:Content>
