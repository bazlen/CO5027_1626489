using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdidasBagPackWebsite.admin
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveBtn_Click(object sender, EventArgs e)
        {
            FileUpload keyfile = (FileUpload)FormView1.FindControl("FileUpload1") as FileUpload;
            if (keyfile.HasFile)
            {
                keyfile.SaveAs(Server.MapPath("~/admin/ProductImages/" + keyfile.FileName));
                Label saveProduct = (Label)FormView1.FindControl("Label1") as Label;
                saveProduct.Text = "~/admin/ProductImages/" + keyfile.FileName;

            }
        }
    }
}