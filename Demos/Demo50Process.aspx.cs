using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo50Process : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LitName.Text = Request.Form["first_Name"] + " " + Request.Form["last_name"];
        LitEmail.Text = Request.Form["email"];
        LitPhone.Text = Request.Form["telephone"];
        LitComments.Text = Request.Form["comments"];

    }
}