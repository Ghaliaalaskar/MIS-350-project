<%@ Page Title="Discover Themes" Language="C#" MasterPageFile="~/MasterDiscoverThemes.Master" AutoEventWireup="true" CodeBehind="DiscoverThemes.aspx.cs" Inherits="MIS_350_project.DiscoverThemes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .discover-container {
            text-align: center;
            background-color: #F4F7FC;
            padding-bottom: 50px;
        }

        .discover-title {
            color: #6B5B7B;
            font-size: 32px;
            margin-top: 20px;
            margin-bottom: 40px;
            font-weight: 500;
        }

        .themes-row {
            display: flex;
            justify-content: center;
            gap: 30px;
            flex-wrap: wrap;
        }

        .theme-card {
            background-color: white;
            width: 300px;
            border-radius: 25px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
            transition: 0.3s;
        }

        .theme-card:hover {
            transform: translateY(-5px);
        }

        .theme-card img {
            width: 100%;
            height: 250px;
            object-fit: cover;
        }

        .theme-details-area {
            padding: 20px;
            text-align: center;
        }

        .theme-label {
            display: block;
            color: #8E8E8E;
            font-size: 18px;
            margin-bottom: 20px;
        }

        .btn-gray-details {
            background-color: #C4C4C4;
            color: white;
            padding: 10px;
            width: 100%;
            border-radius: 15px;
            text-decoration: none;
            display: block;
            margin-bottom: 10px;
            font-size: 14px;
            border: none;
        }

        .btn-purple-book {
            background-color: #6B5B7B;
            color: white;
            padding: 12px;
            width: 100%;
            border-radius: 15px;
            border: none;
            font-size: 14px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-purple-book:hover {
            background-color: #5a3a8e;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="discover-container">
        <h1 class="discover-title">Discover Themes</h1>
        
        <div class="themes-row">
            <div class="theme-card">
                <img src="images/grad.jpg" alt="Graduation" />
                <div class="theme-details-area">
                    <span class="theme-label">Graduation</span>
                    <a href="GraduationDetails.aspx" class="btn-gray-details">Theme Details</a>
                    <asp:Button ID="btnBookGrad" runat="server" Text="Book Theme" CssClass="btn-purple-book" OnClick="btnBook_Click" />
                </div>
            </div>

            <div class="theme-card">
                <img src="images/baby.jpg" alt="Baby Shower" />
                <div class="theme-details-area">
                    <span class="theme-label">Baby Shower</span>
                    <a href="BabyShowerDetails.aspx" class="btn-gray-details">Theme Details</a>
                    <asp:Button ID="btnBookBaby" runat="server" Text="Book Theme" CssClass="btn-purple-book" OnClick="btnBook_Click" />
                </div>
            </div>

            <div class="theme-card">
                <img src="images/bride.jpg" alt="Bridal Shower" />
                <div class="theme-details-area">
                    <span class="theme-label">Bridal Shower</span>
                    <a href="BridalShowerDetails.aspx" class="btn-gray-details">Theme Details</a>
                    <asp:Button ID="btnBookBride" runat="server" Text="Book Theme" CssClass="btn-purple-book" OnClick="btnBook_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
