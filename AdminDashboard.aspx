<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="MIS_350_project.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
        .dashboard-container {
            text-align: center;
            padding-top: 20px;
        }

        .dashboard-title {
            color: #6B5B7B; 
            font-size: 28px;
            margin-bottom: 5px;
        }

        .dashboard-subtitle {
            color: #8E8E8E;
            font-size: 14px;
            margin-bottom: 40px;
        }

        
        .stats-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 25px;
            max-width: 850px;
            margin: 0 auto;
        }

        .stat-card {
            background-color: white;
            padding: 30px;
            border-radius: 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
            text-align: left;
        }

        .stat-info h3 {
            margin: 0;
            color: #8E8E8E;
            font-size: 16px;
            font-weight: 400;
        }

        .stat-info p {
            margin: 10px 0 0;
            font-size: 32px;
            font-weight: bold;
            color: #444;
        }

        .stat-icon {
            font-size: 45px;
            color: #6B5B7B;
            opacity: 0.8;
        }

        
        .quick-action-section {
            margin-top: 50px;
            text-align: left;
            max-width: 850px;
            margin-left: auto;
            margin-right: auto;
        }

        .quick-action-label {
            color: #8E8E8E;
            font-size: 14px;
            margin-bottom: 15px;
            border-bottom: 1px solid #DDD;
            display: inline-block;
            padding-bottom: 5px;
        }

        .buttons-group {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
            justify-content: center;
            margin-top: 20px;
        }

        .btn-action {
            background-color: white;
            border: 1.5px solid #6B5B7B;
            color: #6B5B7B;
            padding: 12px 25px;
            border-radius: 25px;
            text-decoration: none;
            font-size: 14px;
            display: flex;
            align-items: center;
            transition: 0.3s;
        }

        .btn-action i {
            margin-right: 10px;
        }

        .btn-action:hover {
            background-color: #6B5B7B;
            color: white;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dashboard-container">
        <h1 class="dashboard-title">Admin Dashboard</h1>
        <p class="dashboard-subtitle">Manage and monitor all party planning operations</p>

        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-info">
                    <h3>Total Users</h3>
                    <p>4</p>
                </div>
                <div class="stat-icon"><i class="fas fa-users"></i></div>
            </div>

            <div class="stat-card">
                <div class="stat-info">
                    <h3>Total Bookings</h3>
                    <p>2</p>
                </div>
                <div class="stat-icon"><i class="far fa-calendar-check"></i></div>
            </div>

            <div class="stat-card">
                <div class="stat-info">
                    <h3>Available slots</h3>
                    <p>2</p>
                </div>
                <div class="stat-icon"><i class="fas fa-history"></i></div>
            </div>

            <div class="stat-card">
                <div class="stat-info">
                    <h3>Total Themes</h3>
                    <p>3</p>
                </div>
                <div class="stat-icon"><i class="far fa-images"></i></div>
            </div>
        </div>

        <div class="quick-action-section">
            <span class="quick-action-label">Quick action</span>
            <div class="buttons-group">
                <a href="AddThemes.aspx" class="btn-action"><i class="fas fa-plus-square"></i> Add new Themes</a>
                <a href="AddAvailability.aspx" class="btn-action"><i class="fas fa-plus-circle"></i> Add Availability</a>
                <a href="ViewBookings.aspx" class="btn-action"><i class="fas fa-search"></i> View All Bookings</a>
                <a href="ManageUsers.aspx" class="btn-action"><i class="fas fa-user-cog"></i> Manage Users</a>
            </div>
        </div>
    </div>
</asp:Content>
