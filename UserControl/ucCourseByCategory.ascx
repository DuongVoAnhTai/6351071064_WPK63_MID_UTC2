<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucCourseByCategory.ascx.cs" Inherits="de1.UserControl.ucCourseByCategory" %>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="CourseByCategoryEntityDataSource">
    <ItemTemplate>
        <div class="product_box">
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' CssClass="product_name"></asp:Label><br />
            <asp:Image ID="Image1" runat="server" Width="100px" Height="100px" ImageUrl='<%# "~/images/Courses/" + Eval("ImageFilePath")%>' /><br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Duration") %>' CssClass="product_price"></asp:Label><br />
            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/Details.aspx?id="+Eval("CatID") %>' runat="server" CssClass="product_view">View Details</asp:HyperLink>
        </div>
    </ItemTemplate>

    <LayoutTemplate>
        <div style="" id="itemPlaceholderContainer" runat="server">
            <span runat="server" id="itemPlaceholder" />
        </div>
        <div class="pager">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    <asp:NumericPagerField />
                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>

</asp:ListView>
<asp:EntityDataSource ID="CourseByCategoryEntityDataSource" runat="server" ConnectionString="name=QLKhoaHocEntities" DefaultContainerName="QLKhoaHocEntities" EnableFlattening="False" EntitySetName="Courses" EntityTypeFilter="Course" Include="Category" Where="it.CatID = @ID">
    <WhereParameters>
        <asp:QueryStringParameter Name="ID" QueryStringField="CatID" Type="Int32" />
    </WhereParameters>
</asp:EntityDataSource>

