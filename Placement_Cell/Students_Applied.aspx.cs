using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Students_Applied : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext cx2 = new DataClassesDataContext();
        var result = cx2.ExecuteQuery<StudentsJobApplied>("Select * from StudentsJobApplied");
        int count = 0;
        foreach(var r in result)
        {
            count = count + 1;
        }
        if(count==0)
        {
            lbstudentno.Text = "No Students Applied Yet";
        }
        else
        {
            lbstudentno.Text = "The Total Number of Students Applied are " + count;
        }
    }
}