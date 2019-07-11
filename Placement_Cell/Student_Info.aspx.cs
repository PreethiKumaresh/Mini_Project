using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forum : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button4.Visible = false;
        Button5.Visible = false;
    }
    /*protected void Button2_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtdob.Text = "";
        txtmailid.Text = "";
        txtmobno.Text = "";
        txtaddress.Text = "";
        DropDownList1.SelectedValue = "Select";
        //rdegree.Enabled = false;
        txt10.Text = "";
        txt12.Text = "";
        txtug.Text = "";
        txtpg.Text = "";
    }*/
    protected void Button1_Click(object sender, EventArgs e)
    {
        string regno = string.Empty;
        regno = (string)Session["ID"];
        // Response.Write("REGISTER NUMBER "+regno);

        if (IsValid)
        {
            //insert
            if (rdegree.SelectedValue == "UG")
            {
                using (DataClassesDataContext dc1 = new DataClassesDataContext())
                {
                    StudentDetail insert_student = new StudentDetail
                    {
                        studentid = regno,
                        name = txtname.Text,
                        dob = txtdob.Text,
                        mailid = txtmailid.Text,
                        mobno = txtmobno.Text,
                        address = txtaddress.Text,
                        dept = DropDownList1.SelectedValue,
                        degree = "UG",
                        ssc = txt10.Text,
                        hsc = txt12.Text,
                        ug = txtug.Text,
                        pg = ""
                    };
                    dc1.StudentDetails.InsertOnSubmit(insert_student);
                    dc1.SubmitChanges();
                    lbstatus.Text = "Added Successfully";
                }
            }
            else
            {
                using (DataClassesDataContext dc1 = new DataClassesDataContext())
                {
                    StudentDetail insert_student = new StudentDetail
                    {
                        studentid = regno,
                        name = txtname.Text,
                        dob = txtdob.Text,
                        mailid = txtmailid.Text,
                        mobno = txtmobno.Text,
                        address = txtaddress.Text,
                        dept = rdegree.SelectedValue,
                        degree = "PG",
                        ssc = txt10.Text,
                        hsc = txt12.Text,
                        ug = txtug.Text,
                        pg = txtpg.Text
                    };
                    dc1.StudentDetails.InsertOnSubmit(insert_student);
                    dc1.SubmitChanges();
                    lbstatus.Text = "Added Successfully";
                }
            }
            txtname.Text = "";
            txtdob.Text = "";
            txtmailid.Text = "";
            txtmobno.Text = "";
            txtaddress.Text = "";
            DropDownList1.SelectedValue = "Select";
            txt10.Text = "";
            txt12.Text = "";
            txtug.Text = "";
            txtpg.Text = "";
        }
    }
    protected void rdegree_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rdegree.SelectedValue == "UG")
        {
            txtpg.Enabled = false;
            RequiredFieldValidator11.Enabled = false;
        }
        else
        {
            txtpg.Enabled = true;
            RequiredFieldValidator11.Enabled = true;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //display
        string regno = string.Empty;
        regno = (string)Session["ID"];
        DataClassesDataContext dc2 = new DataClassesDataContext();
        var result = dc2.ExecuteQuery<StudentDetail>("Select * from StudentDetail where studentid={0}", regno);
        foreach (var r in result)
        {
            string usercheck = r.studentid;
            usercheck = usercheck.Replace(" ", String.Empty);
            if (usercheck.Equals(regno))
            {
                txtname.Text = r.name;
                txtdob.Text = r.dob;
                txtmailid.Text = r.mailid;
                txtmobno.Text = r.mobno;
                txtaddress.Text = r.address;
                DropDownList1.SelectedValue = r.dept;
                if (r.degree == "UG")
                {
                    rdegree.SelectedIndex = 0;
                    txtug.Text = r.ug;
                }
                else
                {
                    rdegree.SelectedIndex = 1;
                    txtug.Text = r.ug;
                    txtpg.Text = r.pg;
                }
                txt10.Text = r.ssc;
                txt12.Text = r.hsc;
                Button4.Visible = true;
                Button5.Visible = true;
            }
            else
            {
                lbstatus.Text = "You Have Not Registered Any Information...Please Register";
            }
        }

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //update
        string regno = string.Empty;
        regno = (string)Session["ID"];
        using (DataClassesDataContext context = new DataClassesDataContext())
        {
            var student = (from c in context.StudentDetails
                           where c.studentid == regno
                           select c).Single();
            student.name = txtname.Text;
            student.dob = txtdob.Text;
            student.mailid = txtmailid.Text;
            student.mobno = txtmobno.Text;
            student.address = txtaddress.Text;
            student.dept = DropDownList1.SelectedValue;
            student.degree = rdegree.SelectedValue;
            student.ssc = txt10.Text;
            student.hsc = txt12.Text;
            if (rdegree.SelectedValue == "UG")
            {
                student.ug = txtug.Text;
                student.pg = "";
            }
            else
            {
                student.ug = txtug.Text;
                student.pg = txtpg.Text;
            }
            context.SubmitChanges();
            lbstatus.Text = "Successfully Updated!!";
            ClearFormFields(Page);
            DropDownList1.SelectedIndex = 1;
            Button4.Visible = false;
            Button5.Visible = false;
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        ClearFormFields(Page);
        DropDownList1.SelectedIndex = 1;
    }
    private static void ClearFormFields(Control Parent)
    {

        if (Parent is TextBox)
        { (Parent as TextBox).Text = string.Empty; }
        else
        {
            foreach (Control c in Parent.Controls)
                ClearFormFields(c);
        }
    } 
}