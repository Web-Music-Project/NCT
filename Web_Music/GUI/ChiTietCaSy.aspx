<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChiTietCaSy.aspx.cs" Inherits="Web_Music.GUI.ChiTietCaSi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <% =dt1.Rows[0]["Name"].ToString() %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="style" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div style="min-height:500px">

    </div>
</asp:Content>
