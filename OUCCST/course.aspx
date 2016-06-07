﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="course.aspx.cs" Inherits="course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container clearfix">
        <section class="left-list box-shadow">
            <header>师资队伍</header>
            <ul>
                <li><a href="cs-teacher-list.html">教职工名录</a></li>
                <li><a href="#">杰出人才</a></li>
                <li><a href="#">名誉学衔</a></li>
            </ul>
        </section>
        <section class="right-all course clearfix">
            <header class="box-shadow clearfix">
                <div>课程模块</div>
                <ul>
                    <li><a class="course-a course-a-active" href="#"><span class="course-icon course-icon1"></span>公共专业</a></li>
                    <li><a class="course-a" href="#"><span class="course-icon course-icon2"></span>系统结构</a></li>
                    <li><a class="course-a" href="#"><span class="course-icon course-icon3"></span>软件工程</a></li>
                    <li><a class="course-a" href="#"><span class="course-icon course-icon4"></span>数字媒体</a></li>
                    <li><a class="course-a" href="#"><span class="course-icon course-icon5"></span>网络安全</a></li>
                </ul>
            </header>
            <header class="course-header-mobie  clearfix">
                <ul>
                    <li><a class="course-ma course-ma-active" href="javascript:void(0);">公共专业</a></li>
                    <li><a class="course-ma" href="javascript:void(0);">系统结构</a></li>
                    <li><a class="course-ma" href="javascript:void(0);">软件工程</a></li>
                    <li><a class="course-ma" href="javascript:void(0);">数字媒体</a></li>
                    <li><a class="course-ma" href="javascript:void(0);">网络安全</a></li>
                </ul>
            </header>
            <section class="course-content box-shadow">
                <ul class="clearfix">
                    <asp:Repeater ID="Rptclass1" runat="server">
                        <ItemTemplate>
                            <li>
                                <input type="hidden" value="<%#Eval("id")%>"/>
                                <p><%#Eval("classname")%></p>
                                <p>学时：讲授 <%#Eval("teach")%> 实验 <%#Eval("experiment")%></p>
                                <p>先修课程：<%#Eval("first")%></p>
                                <p>学分：<%#Eval("credits")%></p>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </section>
            <section class="hide course-content box-shadow clearfix">
                <ul class="clearfix">
                    <asp:Repeater ID="Rptclass2" runat="server">
                        <ItemTemplate>
                            <li>
                                <input type="hidden" value="<%#Eval("id")%>"/>
                                <p><%#Eval("classname")%></p>
                                <p>学时：讲授 <%#Eval("teach")%> 实验 <%#Eval("experiment")%></p>
                                <p>先修课程：<%#Eval("first")%></p>
                                <p>学分：<%#Eval("credits")%></p>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </section>
            <section class="hide course-content box-shadow clearfix">
                <ul class="clearfix">
                    <asp:Repeater ID="Rptclass3" runat="server">
                        <ItemTemplate>
                            <li>
                                <input type="hidden" value="<%#Eval("id")%>"/>
                                <p><%#Eval("classname")%></p>
                                <p>学时：讲授 <%#Eval("teach")%> 实验 <%#Eval("experiment")%></p>
                                <p>先修课程：<%#Eval("first")%></p>
                                <p>学分：<%#Eval("credits")%></p>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </section>
            <section class="hide course-content box-shadow clearfix">
                <ul class="clearfix">
                    <asp:Repeater ID="Rptclass4" runat="server">
                        <ItemTemplate>
                            <li>
                                <input type="hidden" value="<%#Eval("id")%>"/>
                                <p><%#Eval("classname")%></p>
                                <p>学时：讲授 <%#Eval("teach")%> 实验 <%#Eval("experiment")%></p>
                                <p>先修课程：<%#Eval("first")%></p>
                                <p>学分：<%#Eval("credits")%></p>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </section>
            <section class="hide course-content box-shadow clearfix">
                <ul class="clearfix">
                    <asp:Repeater ID="Rptclass5" runat="server">
                        <ItemTemplate>
                            <li>
                                <input type="hidden" value="<%#Eval("id")%>"/>
                                <p><%#Eval("classname")%></p>
                                <p>学时：讲授 <%#Eval("teach")%> 实验 <%#Eval("experiment")%></p>
                                <p>先修课程：<%#Eval("first")%></p>
                                <p>学分：<%#Eval("credits")%></p>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </section>
        </section>
    </section>
    <div class="screen-bg">
      <div class="one-con">
        <div class="one-close">X</div>
        <h1>高级程序设计语言</h1>
        <p id="lesnum"><span >课程编号：</span></p>
        <p id="lesgoal"><span>课程教学目标及基本要求：</span></p>
        <p id="lestest"><span>考试形式：</span></p>
        <p id="lesbook"><span>参考书：</span></p>
        <p id="lesfile"><span>了解更多：</span><a href="#">点击下载</a></p>
      </div>
    </div>
    <script src="js/jquery-v1.10.2.min.js"></script>
    <script src="js/index.js"></script>
    <script>
        $(document).ready(function () {
            var box = $('.screen-bg');
            var con = $('.one-con');
            $("section.course-content>ul>li").click(function (event) {
                var i = $(this).index();
                var go = $("section.course-content>ul>li>input");
                var num = $(go[i]).val();
                $.ajax({
                    type: "POST",
                    url: "courseajax.ashx",
                    data: { id : num },
                    dataType: "text",
                    success: function (json) {
                        var data = eval('(' + json + ')');
                        $("#lesnum").html("<span >课程编号：</span>" + data.lesnum);
                        $("#lesgoal").html("<span >课程教学目标及基本要求：</span>" + data.lesgoal);
                        $("#lestest").html("<span >考试形式：</span>" + data.lestest);
                        $("#lesbook").html("<span >参考书：</span>" + data.lesbook);
                        $("#lesfile").html("<span>了解更多：</span><a href=\""+data.lesfile+"\">点击下载</a>");
                    }
                });
                box.fadeIn('fast');
            });
            $(".one-close").click(function (event) {
                box.fadeOut('fast');
            });
            box.click(function (event) {
                box.fadeOut('fast');
            });
            con.click(function (event) {
                event.stopPropagation();
            });
        });

    </script>
</asp:Content>

