<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManageCourse.ascx.cs" Inherits="de1.UserControl.ucManageCourse" %>
<asp:GridView ID="GridView1" runat="server" DataKeyNames="id" AutoGenerateColumns="false" AllowPaging="true" PageSize="5">
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

