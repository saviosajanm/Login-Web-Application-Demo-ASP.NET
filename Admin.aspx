<%@ Page Title="Admin Panel" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="KTSAssignment2.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content-container-form">
         <div class="form-wrapper">
            <h2 class="form-title">Admin Control Panel</h2>

            <table class="form-table">
                <tr>
                    <td>Default Page Text 1</td>
                    <td class="input-cell"><asp:TextBox ID="txtDefaultPageText1" runat="server" CssClass="borderless-input"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Default Page Text 2</td>
                    <td class="input-cell"><asp:TextBox ID="txtDefaultPageText2" runat="server" CssClass="borderless-input"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Header Text</td>
                    <td class="input-cell"><asp:TextBox ID="txtHeaderText" runat="server" CssClass="borderless-input"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Footer Text</td>
                    <td class="input-cell"><asp:TextBox ID="txtFooterText" runat="server" CssClass="borderless-input"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Phone Number</td>
                    <td class="input-cell"><asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="borderless-input"></asp:TextBox></td>
                </tr>
            </table>

            <asp:Button ID="btnSave" runat="server" Text="Save Settings" OnClick="btnSave_Click" CssClass="save-button" />
            
             <p style="margin-top:15px;">
                <asp:Label ID="lblSaveMessage" runat="server" ForeColor="Green" Font-Bold="true"></asp:Label>
             </p>
         </div>
    </div>
</asp:Content>