using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace de1.UserControl
{
    public partial class ucManageCourse : System.Web.UI.UserControl
    {
        protected void BindGridView()
        {
            QLKhoaHocEntities context = new QLKhoaHocEntities();
            var query = (from p in context.Courses select p).ToList<Course>();
            gvQLKhoaHoc.DataSource = query;
            gvQLKhoaHoc.DataBind();
        } 
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridView();
        }

        protected void gvQLKhoaHoc_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvQLKhoaHoc.PageIndex = e.NewPageIndex;
            BindGridView();
        }

        protected void BindDropDownList()
        {
            QLKhoaHocEntities context = new QLKhoaHocEntities();
            DropDownListCategory.DataSource = (from c in context.Categories select c).ToList<Category>();
            DropDownListCategory.DataTextField = "CatName";
            DropDownListCategory.DataValueField = "CatID";
            DropDownListCategory.DataBind();

            //dpEditProductCategory.DataSource = (from c in context.Categories select c).ToList<Category>();
            //dpEditProductCategory.DataTextField = "Name";
            //dpEditProductCategory.DataValueField = "id";
            //dpEditProductCategory.DataBind();
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            string fileName = "";
            if (FileUploadPicture.HasFile)
            {
                fileName = FileUploadPicture.FileName;
                FileUploadPicture.SaveAs(Server.MapPath("~/images/Courses/" + fileName));
            }
            QLKhoaHocEntities context = new QLKhoaHocEntities();
            Course p = new Course();
            p.Name = TextBoxName.Text;
            p.Duration = int.Parse(TextBoxDuration.Text);
            p.CatID = int.Parse(DropDownListCategory.SelectedValue);
            p.Description = TextBoxDescription.Text;
            p.ImageFilePath = fileName;

            context.Courses.Add(p);
            context.SaveChanges();
            BindGridView(); //Cap nhat du lieu lai trong grid view
            Page.Master.DataBind();
        }
    }
}