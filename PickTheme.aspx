<%@ Page Title="" Language="C#" MasterPageFile="~/user master.Master" AutoEventWireup="true" CodeBehind="PickTheme.aspx.cs" Inherits="MIS_350_project.PickTheme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
        .themes-wrapper {
            text-align: center;
            padding: 40px;
            background-color: #F4F7FC;
        }
        .themes-grid {
            display: flex;
            justify-content: center;
            gap: 25px;
            flex-wrap: wrap;
            margin-top: 30px;
        }
        .theme-card {
            background: white;
            width: 260px;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.05);
            overflow: hidden;
        }
        .theme-card img { width: 100%; height: 200px; object-fit: cover; }
        .theme-info { padding: 15px; }
        .theme-title { color: #888; margin-bottom: 15px; display: block; }
        
        .btn-gray { background: #CCC; color: white; padding: 8px; width: 100%; border-radius: 10px; text-decoration: none; display: block; margin-bottom: 8px; font-size: 13px; border:none; }
        .btn-purple { background: #6B5B7B; color: white; padding: 10px; width: 100%; border-radius: 10px; text-decoration: none; display: block; font-size: 13px; border:none; cursor: pointer; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="themes-wrapper">
        <h2 style="color: #6B5B7B;">Pick your Theme</h2>
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