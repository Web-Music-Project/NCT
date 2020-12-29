<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ThemBaiHatVaoAlbum.aspx.cs" Inherits="Web_Music.GUI.Admin.ThemBaiHatVaoAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Thêm bài hát vào album
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <h1>Thêm bài hát vào album</h1>
    <asp:Button Text="Quay lại" runat="server" CssClass="btn btn-secondary" 
        PostBackUrl="~/GUI/Admin/SuaAlbum.aspx"/>
    <asp:Table runat="server" CellPadding="10">
        <asp:TableRow>
            <asp:TableCell>Bài hát</asp:TableCell>
            <asp:TableCell><asp:DropDownList runat="server" ID="ddl_BaiHat"></asp:DropDownList></asp:TableCell>
        </asp:TableRow>
    </asp:Table> 
    <br />
    <br />
    <asp:Button Text="Thêm" runat="server" CssClass="btn btn-primary" ID="btn_them" OnClick="btn_them_Click"/>
</asp:Content>
