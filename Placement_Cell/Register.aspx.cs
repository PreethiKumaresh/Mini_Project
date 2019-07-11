using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            string ans="no";
            string uname= txtname.Text;
            uname = uname.Replace(" ", String.Empty);
            Response.Write("USERNAME"+uname);
            using (DataClassesDataContext cx1 = new DataClassesDataContext())
            {
                var query=cx1.ExecuteQuery<login>("Select * from login where username={0}", uname);
                foreach(var s in query)
                {
                    Response.Write("INSIDE USERNAME"+s.username);
                    if(s.username.Equals(uname))
                    {
                        lbcheck.Text="You have Already Registered!";
                        ans = "yes";
                    }
                }
                if(ans=="no")
                {
                    login student_reg = new login
                    {
                        username = txtname.Text,
                        password = txtpwd1.Text
                    };
                    cx1.logins.InsertOnSubmit(student_reg);
                    cx1.SubmitChanges();
                    lbcheck.Text = "Successfully Registered";
                }
                txtname.Text = "";
                txtpwd1.Text = "";
                txtpwd2.Text = "";
            }
        }
    } 
}
