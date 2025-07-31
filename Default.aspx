<%@ Page Title="Homepage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="Default.aspx.cs" Inherits="LoginWebApp.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="d-flex align-items-center justify-content-center" style="min-height: 60vh;">
        <asp:Label ID="lblWebpageText" runat="server" 
            CssClass="display-4 fw-bold text-center alternating-text"></asp:Label>
    </div>
</asp:Content>