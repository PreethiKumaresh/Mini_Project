using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "Student")
        {
            Response.Redirect("Student_details.aspx");

        }
        else if (DropDownList1.SelectedValue == "Company")
        {
            Response.Redirect("Company_details.aspx");
        }
    }
}