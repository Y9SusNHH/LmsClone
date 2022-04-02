﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Detailclass.aspx.cs" Inherits="LmsClone.Detailclass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .hidden {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <input id="check" type="checkbox" onchange="ShowHide(this)" runat="server" />
    <label>Thêm bài học</label>
    <form>
        <label class="hidden">ID</label>
        <input type="text" name="id" class="hidden">
        <label class="hidden">Tên bài học</label>
        <input type="text" name="name" class="hidden">
        <label class="hidden">Mô tả</label>
        <input type="text" name="description" class="hidden">
        <label class="hidden">Nội dung</label>
        <input type="text" name="detail" class="hidden">
        <asp:Button runat="server" OnClick="btnInserLesson" Text="Thêm bài học" class="hidden" />
    </form>
    <div>
        <asp:ListView ID="ListViewLesson" runat="server">
            <ItemTemplate>
                <div class="each-class">
                    <h5><%# Eval("Name") %> : <%# Eval("Description") %></h5>
                    <h5>Nội dung bài học</h5>
                    <span><%# Eval("Detail") %></span>
                    <br />
                    <span>-----------------------------------------------</span>
                </div>
            </ItemTemplate>
        </asp:ListView>
        <asp:XmlDataSource ID="XmlLesson" runat="server" DataFile="~/Data/Lesson.xml"></asp:XmlDataSource>
    </div>
</asp:Content>