<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Goals.aspx.cs" Inherits="Project1.Goals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<main class="col-md-9 col-lg-10 ms-sm-auto px-md-4">
    <div class="text-center my-4">
    <h1>Financial Goals</h1>
    <p>Set and track your financial goals.</p>
    </div>

    <div class="row">
    <div class="col-md-12">
        <form id="goal-form">
        <div class="form-group">
            <label for="goal-name">Goal Name</label>
            <input
            type="text"
            class="form-control"
            id="goal-name"
            required
            />
        </div>
        <div class="form-group">
            <label for="goal-description">Description</label>
            <input
            type="text"
            class="form-control"
            id="goal-description"
            required
            />
        </div>
        <div class="form-group">
            <label for="goal-target">Target Amount ($)</label>
            <input
            type="number"
            class="form-control"
            id="goal-target"
            required
            />
        </div>
        <div class="form-group">
            <label for="goal-current">Current Amount ($)</label>
            <input
            type="number"
            class="form-control"
            id="goal-current"
            required
            />
        </div>
        <div class="form-group">
            <label for="goal-deadline">Deadline</label>
            <input
            type="date"
            class="form-control"
            id="goal-deadline"
            required
            />
        </div>
        <button type="submit" class="btn btn-primary">Add Goal</button>
        </form>
    </div>
    </div>

    <!-- Filter and Sort Options -->
    <div class="row mt-4">
    <div class="col-md-6">
        <select id="filter-select" class="form-control">
        <option value="all">Show All</option>
        <option value="pending">Show Pending</option>
        </select>
    </div>
    <div class="col-md-6">
        <select id="sort-select" class="form-control">
        <option value="target">Sort by Target Amount</option>
        <option value="current">Sort by Current Amount</option>
        </select>
    </div>
    </div>

    <div class="row mt-4">
    <div class="col-md-12">
        <h2>Your Goals</h2>
        <ul class="list-group" id="goal-list"></ul>
    </div>
    </div>
</main>
</asp:Content>
