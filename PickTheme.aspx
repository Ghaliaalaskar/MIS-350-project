<%@ Page Title="Pick Your Theme" Language="C#" MasterPageFile="~/MasterPickThemes.Master" AutoEventWireup="true" CodeBehind="PickTheme.aspx.cs" Inherits="MIS_350_project.PickTheme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* تأكدي إن الخلفية ما تغطي على الـ Nav */
        .themes-wrapper {
            text-align: center;
            padding: 40px 20px;
            background-color: #F4F7FC;
            min-height: 100vh;
        }
        
        .themes-grid {
            display: flex;
            justify-content: center;
            gap: 25px;
            flex-wrap: wrap;
            margin-top: 30px;
        }

        .page-title {
            color: #6B5B7B;
            font-size: 28px;
            font-weight: 500;
            margin-bottom: 10px;
        }

        .theme-card {
            background: white;
            width: 280px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
            overflow: hidden;
            transition: 0.3s;
        }

        .theme-card img { 
            width: 100%; 
            height: 220px; 
            object-fit: cover; 
        }

        .theme-info { padding: 20px; }
        
        .theme-title { 
            color: #8E8E8E; 
            margin-bottom: 15px; 
            display: block; 
            font-size: 16px;
        }
        
        .btn-gray { 
            background: #C4C4C4; 
            color: white; 
            padding: 10px; 
            width: 100%; 
            border-radius: 15px; 
            text-decoration: none; 
            display: block; 
            margin-bottom: 10px; 
            font-size: 14px; 
            border:none; 
            text-align: center;
        }

        .btn-purple { 
            background: #6B5B7B; 
            color: white; 
            padding: 12px; 
            width: 100%; 
            border-radius: 15px; 
            text-decoration: none; 
            display: block; 
            font-size: 14px; 
            border:none; 
            cursor: pointer; 
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="themes-wrapper">
        <h2 class="page-title">Pick your Theme!</h2>
        <div class="themes-grid">
            <div class="theme-card">
                <img src="images/grad.jpg" alt="Graduation" />
                <div class="theme-info">
                    <span class="theme-title">Graduation</span>
                    <a href="Details.aspx?id=1" class="btn-gray">Theme Details</a>
                    <asp:Button ID="btnPick1" runat="server" Text="Book Theme" CssClass="btn-purple" OnClick="SelectTheme" CommandArgument="1" />
                </div>
            </div>
            <div class="theme-card">
                <img src="images/baby.jpg" alt="Baby Shower" />
                <div class="theme-info">
                    <span class="theme-title">Baby Shower</span>
                    <a href="Details.aspx?id=2" class="btn-gray">Theme Details</a>
                    <asp:Button ID="btnPick2" runat="server" Text="Book Theme" CssClass="btn-purple" OnClick="SelectTheme" CommandArgument="2" />
                </div>
            </div>
            <div class="theme-card">
                <img src="images/bride.jpg" alt="Bridal Shower" />
                <div class="theme-info">
                    <span class="theme-title">Bridal Shower</span>
                    <a href="Details.aspx?id=3" class="btn-gray">Theme Details</a>
                    <asp:Button ID="btnPick3" runat="server" Text="Book Theme" CssClass="btn-purple" OnClick="SelectTheme" CommandArgument="3" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>