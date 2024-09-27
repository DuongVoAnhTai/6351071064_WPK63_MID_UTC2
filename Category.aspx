<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPageMaster.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="de1.Category1" %>
<%@ Register src="UserControl/ucCourseByCategory.ascx" tagname="ucCourseByCategory" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucCourseByCategory ID="ucCourseByCategory1" runat="server" />
</asp:Content>
