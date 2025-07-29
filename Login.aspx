<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="KTSAssignment2.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content-container-form">
        <div class="form-wrapper">
            <h2 class="form-title">Login Page</h2>

            <table class="form-table">
                <tr>
                    <td>Login</td>
                    <td class="input-cell">
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="borderless-input"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td class="input-cell">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="borderless-input"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center; background-color: white;">
                         <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="login-button" />
                    </td>
                </tr>
            </table>

            <p style="margin-top:15px;">
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
            </p>
        </div>
    </div>
</asp:Content>