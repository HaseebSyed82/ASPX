using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hex50_Lab04b : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["hex50_Exclamation"] != null)
            litExclamation.Text = ((string)Session["hex50_Exclamation"]);
        else
            litAdverb.Text = "???";

        if (Session["hex50_Adverb"] != null)
            litAdverb.Text = ((string)Session["hex50_Adverb"]).ToLower();
        else
            litExclamation.Text = "???";

        if (Session["hex50_Noun"] != null)
            litNoun.Text = ((string)Session["hex50_Noun"]).ToLower();
        else
            litNoun.Text = "???";
    }
}