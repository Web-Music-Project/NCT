<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ThemDanhMuc.aspx.cs" Inherits="Web_Music.GUI.Admin.ThemDanhMuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Thêm Danh Mục
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
            <h1>Thêm danh mục</h1>
     <asp:Button Text="Danh sách danh mục" CssClass="btn btn-secondary" runat="server"
        PostBackUrl="~/GUI/Admin/QuanLyDanhMuc.aspx" ID="btnDanhSach"/>
    <asp:Table runat="server" Width="457px" CellPadding="10" Font-Size="14px">
        <asp:TableRow>
            <asp:TableCell>Tên danh mục</asp:TableCell>
            <asp:TableCell><asp:TextBox runat="server" ID="txtalbum" Width="300"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
         <asp:Button Text="Thêm" runat="server" ID="btnThem" CssClass="btn btn-primary" OnClick="btnThem_Click" />
    <br />
    <br />
    <br />
    <asp:Label Text="" ID="lblMsg" runat="server" Font-Bold="true" Font-Size="16px" ></asp:Label>
</asp:Content>
