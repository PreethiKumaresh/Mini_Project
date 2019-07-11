using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Job_Post : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(IsValid)
        {
            string regno=(string)Session["ID"];
            regno = regno.Replace(" ", String.Empty).ToString();
            Response.Write("Register Number:"+regno);
            string cid = DropDownList1.SelectedValue;
            cid = cid.Replace(" ", String.Empty).ToString(); ;
           // var flag = "f";
            var ans = "no";
            DataClassesDataContext cx3 = new DataClassesDataContext();
            var result = cx3.ExecuteQuery<detailCompany>("Select * from detailCompany where companyid={0}", cid);
            foreach (var r in result)
            {
                //Response.Write("true");
                using (DataClassesDataContext cx4 = new DataClassesDataContext())
                {
                    var query = cx4.ExecuteQuery<StudentsJobApplied>("Select * from StudentsJobApplied where studentid={0}", regno);
                    foreach (var s in query)
                    {
                      //  Response.Write("Company ID: "+s.companyid+" "+cid+" Student ID: "+s.studentid+" "+regno);
                        if (s.companyid.Contains(cid))
                        {
                            if( s.studentid.Contains(regno))
                            {
                                lbstatus.Text = "You have Already Registered!";
                                ans = "yes";
                            }
                        }
                    }
                    if(ans=="no")
                    {
                        StudentsJobApplied job_reg = new StudentsJobApplied
                        {
                            companyid = DropDownList1.SelectedValue,
                            studentid = regno,
                        };
                        cx4.StudentsJobApplieds.InsertOnSubmit(job_reg);
                        cx4.SubmitChanges();
                        lbstatus.Text = "Successfully Applied";
                        //flag = "t";
                    }
                }
            }
          /*  if(flag!="t")
            {
                //Response.Write("false");
                lbstatus.Text = "Invalid - Company ID Does not exists";
            }*/
        }
    }
    /*public static string eligible(string cid,string regno)
    {
        DataClassesDataContext dc1 = new DataClassesDataContext();
        var result = dc1.ExecuteQuery<detailCompany>("Select * from detailCompany where companyid={0}", cid);
        foreach(var r in result)
        {
            string dept_criteria = r.eligib;
            DataClassesDataContext dc2 = new DataClassesDataContext();
            var result3 = dc1.ExecuteQuery<StudentDetail>("Select * from StudentDetail where studentid={0}", regno);
            foreach(var r3 in result3)
            {
                string student_dept = r3.dept;
                if(dept_criteria.Contains(student_dept))
                {
                    return "true";
                }
                else
                {
                    return "false";
                }
            }
        }
    }*/
}
        
        /*int cutoff = Convert.ToInt16(r.cutoff);
                string department = r.eligib;
                //check for eligibility criteria
                DataClassesDataContext cx2 = new DataClassesDataContext();
                var student_eligib = cx2.ExecuteQuery<StudentDetail>("Select * from StudentDetail where studentid={0}", regno);
                foreach (var sam in student_eligib)
                {
                    int s10 = Convert.ToInt16(sam.ssc);
                    int s12 = Convert.ToInt16(sam.hsc);
                    int sug = Convert.ToInt16(sam.ug);
                    //int spg = Convert.ToInt16(sam.pg);
                    string sdept = sam.dept;
                    string degree = sam.degree;
                    if (degree.Equals("UG"))
                    {
                        if (s10 >= cutoff && s12 >= cutoff && sug >= cutoff && department.Contains(sdept)) 
                        {
            //check for same user applying for same job
            DataClassesDataContext cx3 = new DataClassesDataContext();
            var usercheck = cx3.ExecuteQuery<StudentsJobApplied>("Select * from StudentsJobApplied where studentid={0}", regno);
            foreach (var u in usercheck)
            {
                if (u.companyid.Equals(cid) && (u.studentid.Equals(regno)))
                { lbstatus.Text = "You Have Already Registered"; }
                else
                {
                    //Response.Write("true");
                    //insert code for applying job
                    using (DataClassesDataContext cx4 = new DataClassesDataContext())
                    {
                        StudentsJobApplied job_reg = new StudentsJobApplied
                        {
                            companyid = cid,
                            studentid = regno,
                        };
                        cx4.StudentsJobApplieds.InsertOnSubmit(job_reg);
                        cx4.SubmitChanges();
                        lbstatus.Text = "Successfully Applied";
                        //flag = "t";
                    }
                }
            }
            }
            }
            else { lbstatus.Text = "Sorry! You are not eligible"; }}
        else
        {
            if (s10 >= cutoff && s12 >= cutoff && sug >= cutoff && spg >= cutoff && department.Contains(sdept)) 
            {
                //check for same user applying for same job
                DataClassesDataContext cx3 = new DataClassesDataContext();
                var usercheck = cx3.ExecuteQuery<StudentsJobApplied>("Select * from StudentsJobApplied where studentid={0}", regno);
                foreach (var u in usercheck)
                {
                    if (u.companyid.Equals(cid) && (u.studentid.Equals(regno)))
                    { lbstatus.Text = "You Have Already Registered"; }
                    else
                    {
                        //Response.Write("true");
                        //insert code for applying job
                        using (DataClassesDataContext cx4 = new DataClassesDataContext())
                        {
                            StudentsJobApplied job_reg = new StudentsJobApplied
                            {
                                companyid = cid,
                                studentid = regno,
                            };
                            cx4.StudentsJobApplieds.InsertOnSubmit(job_reg);
                            cx4.SubmitChanges();
                            lbstatus.Text = "Successfully Applied";
                            flag = "t";
                        }
                    }
                }
            } 
            else { lbstatus.Text = "Sorry! You are not eligible"; }
        }
    }
            if (flag != "t")
            {
                //Response.Write("false");
                lbstatus.Text = "Invalid - Company ID Does not exists";
            }
        }
    }
}*/
