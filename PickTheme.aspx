<%@ Page Title="Pick Your Theme" Language="C#" MasterPageFile="~/MasterPickThemes.Master" AutoEventWireup="true" CodeBehind="PickTheme.aspx.cs" Inherits="MIS_350_project.PickTheme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .themes-wrapper {
            text-align: center;
            padding: 40px;
            background-color: #F4F7FC;
        }

        .page-title {
            color: #6B5B7B;
            font-size: 28px;
            margin-bottom: 30px;
            font-weight: 500;
        }

        .themes-grid {
            display: flex;
            justify-content: center;
            gap: 25px;
            flex-wrap: wrap;
        }

        .theme-card {
            background: white;
            width: 280px;
            border-radius: 20px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
            overflow: hidden;
            transition: 0.3s;
        }

        .theme-card:hover {
            transform: translateY(-5px);
        }

        .theme-card img {
            width: 100%;
            height: 220px;
            object-fit: cover;
        }

        .theme-info {
            padding: 20px;
        }

        .theme-label {
            color: #8E8E8E;
            margin-bottom: 15px;
            display: block;
            font-size: 16px;
        }

        .btn-details {
            background-color: #C4C4C4;
            color: white !important;
            padding: 10px;
            width: 100%;
            border-radius: 15px;
            display: block;
            text-decoration: none;
            margin-bottom: 10px;
            font-size: 14px;
            border: none;
            text-align: center;
            cursor: pointer;
            box-sizing: border-box;
        }

        .btn-book {
            background-color: #6B5B7B;
            color: white;
            padding: 12px;
            width: 100%;
            border-radius: 15px;
            border: none;
            cursor: pointer;
            font-size: 14px;
            transition: 0.3s;
        }

        .btn-book:hover {
            background-color: #5a3a8e;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="themes-wrapper">
        <h1 class="page-title">Pick your Theme!</h1>
        
        <div class="themes-grid">
            <div class="theme-card">
                <img src="images/grad.jpg" alt="Graduation" />
                <div class="theme-info">
                    <span class="theme-label">Graduation</span>
                    <asp:LinkButton ID="btnGradDetails" runat="server" CssClass="btn-details" OnClick="GoToDetails" CommandArgument="GraduationDetails.aspx">Theme Details</asp:LinkButton>
                    <asp:Button ID="btnGradBook" runat="server" Text="Book Theme" CssClass="btn-book" OnClick="GoToBooking" CommandArgument="Graduation" />
                </div>
            </div>

            <div class="theme-card">
                <img src="images/baby.jpg" alt="Baby Shower" />
                <div class="theme-info">
                    <span class="theme-label">Baby Shower</span>
                    <asp:LinkButton ID="btnBabyDetails" runat="server" CssClass="btn-details" OnClick="GoToDetails" CommandArgument="BabyShowerDetails.aspx">Theme Details</asp:LinkButton>
                    <asp:Button ID="btnBabyBook" runat="server" Text="Book Theme" CssClass="btn-book" OnClick="GoToBooking" CommandArgument="Baby Shower" />
                </div>
            </div>

            <div class="theme-card">
                <img src="images/bride.jpg" alt="Bridal Shower" />
                <div class="theme-info">
                    <span class="theme-label">Bridal Shower</span>
                    <asp:LinkButton ID="btnBrideDetails" runat="server" CssClass="btn-details" OnClick="GoToDetails" CommandArgument="BridalShowerDetails.aspx">Theme Details</asp:LinkButton>
                    <asp:Button ID="btnBrideBook" runat="server" Text="Book Theme" CssClass="btn-book" OnClick="GoToBooking" CommandArgument="Bridal Shower" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>