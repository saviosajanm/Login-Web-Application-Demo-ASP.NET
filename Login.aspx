<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="Login.aspx.cs" Inherits="LoginWebApp.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-12 col-md-8 col-lg-6 col-xl-4 mx-auto">
            <div class="card shadow">
                <div class="card-header">
                    <h2 class="card-title text-center text-dark fw-bold mb-0">Login Page</h2>
                </div>
                <div class="card-body">
                    <div class="mb-3">
                        <label class="form-label fw-bold">Login</label>
                        <asp:TextBox ID="txtUsername" runat="server" 
                            CssClass="form-control border-0 border-bottom rounded-0"></asp:TextBox>
                    </div>
                    <div class="mb-4">
                        <label class="form-label fw-bold">Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" 
                            CssClass="form-control border-0 border-bottom rounded-0"></asp:TextBox>
                    </div>
                    <div class="d-grid">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" 
                            OnClick="btnLogin_Click" 
                            CssClass="btn btn-dark btn-lg fw-bold" />
                    </div>
                    <div class="mt-3 text-center">
                        <asp:Label ID="lblMessage" runat="server" 
                            CssClass="text-danger fw-bold"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>