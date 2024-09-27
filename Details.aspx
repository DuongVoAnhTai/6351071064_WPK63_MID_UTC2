<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPageMaster.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="de1.Details" %>
<%@ Register src="UserControl/ucCourseDetails.ascx" tagname="ucCourseDetails" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucCourseDetails ID="ucCourseDetails1" runat="server" />
</asp:Content>
