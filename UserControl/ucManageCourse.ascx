<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManageCourse.ascx.cs" Inherits="de1.UserControl.ucManageCourse" %>

<style type="text/css">
    .auto-style1 {
        width: 145px;
    }
</style>

<table style="width: 100%;">
    <tr>
        <td class="auto-style1">Course name:</td>
        <td><asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox></td>
    </tr>

    <tr>
        <td class="auto-style1">Duration</td>
        <td><asp:TextBox ID="TextBoxDuration" runat="server"></asp:TextBox></td>
    </tr>

    <tr>
        <td class="auto-style1">Category</td>
        <td><asp:DropDownList ID="DropDownListCategory" runat="server"></asp:DropDownList></td>
    </tr>

    <tr>
        <td class="auto-style1">Description</td>
        <td><asp:TextBox ID="TextBoxDescription" runat="server" TextMode="MultiLine"></asp:TextBox></td>
    </tr>

    <tr>
        <td class="auto-style1">Picture</td>
        <td><asp:FileUpload ID="FileUploadPicture" runat="server" /></td>
    </tr>

    <tr>
        <td class="auto-style1"></td>
        <td><asp:Button ID="ButtonAddNew" runat="server" Text="Add new" OnClick="btnAddNew_Click" /></td>
    </tr>
</table>

<asp:GridView ID="gvQLKhoaHoc" runat="server" DataKeyNames="CatID" AutoGenerateColumns="false" AllowPaging="true" PageSize="5" OnPageIndexChanging="gvQLKhoaHoc_PageIndexChanging">
<Columns>
    <asp:TemplateField HeaderText="No.">
        <ItemTemplate>
            <%# Container.DataItemIndex+1 %>
        </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText="Images">
        <ItemTemplate>
            <asp:Image ID="imgCourseImage" Width="88" ImageUrl='<%# "~/images/Courses/" + Eval("ImageFilePath") %>' runat="server" />
        </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText="Name">
        <ItemTemplate>
            <asp:HyperLink ID="hplCourseName" runat="server" NavigateUrl='<%# "~/Details.aspx?id=" + Eval("ID") %>' Text='<%# Eval("Name") %>'></asp:HyperLink>
        </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField>
        <ItemTemplate>
            <asp:Button ID="btnDelete" OnClientClick="return confirm('Delete?');" runat="server" Text="Delete" CommandName="DeleteProduct" CommandArgument='<%#Eval("id") %>' />
        </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField>
        <ItemTemplate>
            <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="EditProduct" CommandArgument='<%# Eval("id") %>'/>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
</asp:GridView>

