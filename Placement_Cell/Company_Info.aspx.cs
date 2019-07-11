using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Company : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void add_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            using (DataClassesDataContext dc = new DataClassesDataContext())
            {
                detailCompany insert_company = new detailCompany
                {
                    companyid = TextBox1.Text,
                    name = TextBox2.Text,
                    emailid = TextBox3.Text,
                    address = TextBox4.Text,
                    mobno = TextBox5.Text,
                    jpost = TextBox6.Text,
                    jpay = TextBox7.Text,
                    eligib = TextBox8.Text,
                    cutoff = TextBox9.Text,
                    postavai = TextBox10.Text,
                    app_final_date = TextBox11.Text,
                };
                dc.detailCompanies.InsertOnSubmit(insert_company);
                dc.SubmitChanges();
                lbstatus.Text = "Added Successfully";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";
                TextBox11.Text = "";
            }
        }
    }
}