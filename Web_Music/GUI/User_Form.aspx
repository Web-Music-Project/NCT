<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPage.Master" AutoEventWireup="true" CodeBehind="User_Form.aspx.cs" Inherits="Web_Music.GUI.User_Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    User-Form
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="style" runat="server">

<style>
      *{
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
        }
        #login h1{
            text-align:center;
            margin-top: 50px;
            margin-bottom: 40px;
        }
        .input{
            text-align: center;
        }
        #login{
            margin: 0 auto;
            display: block;
            width: 500px;
            padding-bottom: 50px;
            background-color:white;
            border-radius: 20px;
            border: 1px solid transparent;
        }
        #container{
            padding-top: 100px;
            height: 900px;
            background-image: url(../Image/Login/login_background.jpg);
        }
/*Đoạn này asp:button tự render ra 1 ô input có ID là content_dang_nhap (content_+tên ID asp:button)*/
        #content_dang_nhap{
            margin: 0 auto;
            display: block;
            cursor: pointer;
        }
        div.input input
        {
            display:inline-block;
            padding:15px 50px;
            background-color: #E9E9E9;
            border-radius:7px;
            outline:none;
            border:none;

        }
        .input input{
            margin-bottom: 20px;
        }
          div div.input:nth-child(3) input ,div div:nth-child(4) input
         {
              margin-left:20px;
         }
/*Đoạn này asp:button tự render ra 1 ô input có ID là content_dang_nhap (content_+tên ID asp:button)*/
        #content_dang_nhap 
        {
            display:block;
            padding:15px 99px;
            margin:0 auto;  
            background-color: #D23F8D;
            border: none;
            outline: none;
            border-radius: 5px;
            font-size: 14px;
            font-weight: 600;
        }
        #content_msg{
            color: red;
            margin-left: 117px;
            margin-bottom: 10px;
            display: block;
        }
       

</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
      <div runat="server">
        <div id="container">
            <div id="login">
                <h1>Thông Tin Tài Khoản</h1>
                <div>
                    <div class="input">
                        <%--/// bắn session username vào --%>
                     <asp:TextBox ID="txtUsername" runat="server" ></asp:TextBox>
                    </div>
                    <div class="input">
                        <asp:TextBox ID="txtOldPass" runat="server" placeholder="Mật khẩu cũ" TextMode="Password"></asp:TextBox>
                    </div>
                     <div class="input">
                        <asp:TextBox ID="txtNewPass" runat="server" placeholder="Mật khẩu mới" TextMode="Password" CssClass="view"></asp:TextBox>
                         <a href="#" class="view1" ><i class="fa fa-eye" aria-hidden="true" id="view1"></i></a>

                    </div>
                     <div class="input">
                        <asp:TextBox ID="txtConfirmNewPass" runat="server" placeholder="Xác nhận mật khẩu mới" TextMode="Password"  CssClass="view2"></asp:TextBox>
                         <a href="#" class="view3"><i class="fa fa-eye" aria-hidden="true" id="view3"></i></a>

                    </div>
                        <asp:Label Text="" runat="server" ID="msg"/>
                </div>
                <div>
                    <asp:Button Text="Đổi Mật Khẩu" runat="server" id="dang_nhap" type="submit" OnClick="SuaMatKhau_Click"/>
                </div>         
            </div>
        </div>
    </div>

    <%--<script>
        var view1 = document.getElementById('view1');
        console.log(view1);
        view1.addEventListener('click', function (event) {
            var view = document.querySelector('.view');
            console.log(view);
            if (view.type == "password") {
                view.type = "text";
            }
            else {
                view.type = "password";
            }
            
        });
        var view3 = document.getElementById('view3');
        view3.addEventListener('click', function (event) {
            var view2 = document.querySelector('.view2');
            if (view2.type == "password") {
                view2.type = "text";
            }
            else {
                view2.type = "password";
            }
        });
    </script>--%>
</asp:Content>
