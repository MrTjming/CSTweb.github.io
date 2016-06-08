﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="pweditor.aspx.cs" Inherits="admin_pweditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="content" class="container_16 clearfix">
    <div class="grid_6" >
        <p>
            <label for="title">旧密码</label>
            <asp:TextBox ID="TxtOldPw" TextMode="Password" runat="server"></asp:TextBox>
        </p>
    </div>
     <div class="grid_10"></div>
    <div class="grid_6">
        <p>
            <label for="title">新密码</label>
            <asp:TextBox ID="NewPw1" TextMode="Password" runat="server"></asp:TextBox>
        </p>
    </div>
    <div class="grid_10"></div>
    <div class="grid_6">
        <p>
            <label for="title">请再输一次新密码</label>
            <asp:TextBox ID="NewPw2" TextMode="Password" runat="server"></asp:TextBox>
        </p>
    </div>
        <div class="grid_10"></div>
    <div class="grid_6">
        <asp:Button runat="server" ID="BtnSubmit" OnClientClick="return check();" Text="确认" OnClick="BtnSubmit_Click" />   

    </div>
        </div>
    <script type="text/javascript">
        function check(){
            var pw1 = $("#<%=NewPw1.ClientID%>").val();
            var pw2 = $("#<%=NewPw2.ClientID%>").val();
            if (pw1 == pw2) {
                return true;
            }
            else {
                alert("两次输入的新密码不一致");
                return false;
            }
        }
    </script>
</asp:Content>

