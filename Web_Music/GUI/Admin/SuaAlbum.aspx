<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SuaAlbum.aspx.cs" Inherits="Web_Music.GUI.Admin.SuaAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Sửa Album
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
               <h1>Sửa Album</h1>
     <asp:Button Text="Danh sách Album" CssClass="btn btn-secondary" runat="server"
        PostBackUrl="~/GUI/Admin/QuanLyAlbum.aspx" ID="btnDanhSach"/>
    <asp:Table runat="server" Width="522px" CellPadding="10" Font-Size="14px">
        <asp:TableRow>
            <asp:TableCell>Tên Album</asp:TableCell>
            <asp:TableCell><asp:TextBox runat="server" ID="txtAlbumName" Width="300"></asp:TextBox></asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>Thumbnail</asp:TableCell>
            <asp:TableCell>
                <asp:FileUpload ID="upload_thumbnail" runat="server" />
                <asp:Image runat="server" ID="thumbnail_img" Width="150" Height="150" AlternateText="Image not found!" style="object-fit:cover;"/>
            </asp:TableCell>        
        </asp:TableRow>
    </asp:Table>
    <br />
    <asp:Label style="font-size:30px;text-align:center;display:block;" runat="server" ID="lb_TenAlbum" />
    <asp:GridView ID="dgv_SongInAlbum" AllowPaging="True" PageSize="10" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1000px"  HorizontalAlign="Center" Font-Size="18px" OnPageIndexChanging="dgvalbum_PageIndexChanging">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField HeaderText="ID" DataField="ID" />
            <asp:BoundField HeaderText="Tên bài hát" DataField="Name" />
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:Button runat="server" ID="btnXoa" Text="Xóa"
                          CssClass="btn btn-danger" CommandArgument='<%# Bind("ID") %>' CommandName="xoa"  OnClientClick="return confirm('Ban Co Chac Chan Xoa Khong')"  OnCommand="btnXoa_Command"/>
                     <ItemTemplate>
                </ItemTemplate>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <br />
    <asp:Button Text="Thêm bài hát vào album" runat="server" ID="Button1" CssClass="btn btn-secondary" OnClick="btnsua_Click" PostBackUrl="~/GUI/Admin/ThemBaiHatVaoAlbum.aspx"/>
    <br />
    <br />
    <asp:Button Text="Lưu lại" runat="server" ID="btnsua" CssClass="btn btn-primary" OnClick="btnsua_Click" />
    <br />
    <br />
    <br />
    <asp:Label Text="" ID="lblMsg" runat="server" Font-Bold="true" Font-Size="16px" ></asp:Label>
</asp:Content>
