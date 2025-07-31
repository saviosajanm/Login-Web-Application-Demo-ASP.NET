<%@ Page Title="Admin Panel" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="Admin.aspx.cs" Inherits="LoginWebApp.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-12">
            <div class="card shadow">
                <div class="card-header">
                    <h2 class="card-title text-center text-dark fw-bold mb-0">Admin Control Panel</h2>
                </div>
                <div class="card-body">
                    <div class="mb-3">
                        <label class="form-label fw-bold">Default Page Text 1</label>
                        <asp:TextBox ID="txtDefaultPageText1" runat="server" 
                            CssClass="form-control border-0 border-bottom rounded-0"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label fw-bold">Default Page Text 2</label>
                        <asp:TextBox ID="txtDefaultPageText2" runat="server" 
                            CssClass="form-control border-0 border-bottom rounded-0"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label fw-bold">Header Text</label>
                        <asp:TextBox ID="txtHeaderText" runat="server" 
                            CssClass="form-control border-0 border-bottom rounded-0"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label fw-bold">Footer Text</label>
                        <asp:TextBox ID="txtFooterText" runat="server" 
                            CssClass="form-control border-0 border-bottom rounded-0"></asp:TextBox>
                    </div>
                    <div class="mb-4">
                        <label class="form-label fw-bold">Phone Number</label>
                        <asp:TextBox ID="txtPhoneNumber" runat="server" 
                            CssClass="form-control border-0 border-bottom rounded-0"></asp:TextBox>
                    </div>
                    <div class="d-grid">
                        <asp:Button ID="btnSave" runat="server" Text="Save Settings" 
                            OnClick="btnSave_Click" 
                            CssClass="btn btn-success btn-lg" />
                    </div>
                    <div class="mt-3 text-center">
                        <asp:Label ID="lblSaveMessage" runat="server" 
                            CssClass="text-success fw-bold"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>