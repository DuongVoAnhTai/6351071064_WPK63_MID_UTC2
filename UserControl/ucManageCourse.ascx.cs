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
    }
}