using System;
using System.Collections.Generic;

using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnregister_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            string uname = txtname.Text;
            string pwd = txtpwd.Text;
            if (uname == "admin" && pwd == "admin")
            {
                Response.Redirect("Admin.aspx");
            }
            else
            {
                DataClassesDataContext cx2 = new DataClassesDataContext();
                var result = cx2.ExecuteQuery<login>("Select * from login where username={0}", uname);
                var f = "f";
                foreach (var r in result)
                {
                    f = "t";
                    string str = r.password;
                    str = str.Replace(" ", String.Empty);
                    if (str.Equals(pwd))
                    {
                        //lbcheck.Text = "valid";
                        Session["ID"] = txtname.Text;
                        Response.Redirect("Student.aspx");
                    }
                    else
                    {
                        lbcheck.Text = "Invalid Password";
                    }
                }
                if (f != "t")
                {
                    lbcheck.Text = "Username does not exist - Please go and Register";
                }
            }
        }
    }

}