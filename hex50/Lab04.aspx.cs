using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hex50_Lab04 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack && !String.IsNullOrEmpty((string)Session["hex50_Exclamation"]))
            ddlExclamation.SelectedValue = (string)Session["hex50_Exclamation"];

        if (!Page.IsPostBack && !String.IsNullOrEmpty((string)Session["hex50_Adverb"]))
            radAdverbs.SelectedValue = (string)Session["hex50_Adverb"];

        if (!Page.IsPostBack && !String.IsNullOrEmpty((string)Session["hex50_Noun"]))
            lstNouns.SelectedValue = (string)Session["hex50_Noun"];



       // Session["hex50_Adverb"] = radAdverbs.SelectedValue;


    }

    protected void radAdRotator_CheckedChanged(object sender, EventArgs e)
    {
        mvwMain.SetActiveView(viwAdRotator);
    }
    protected void radQuickLinks_CheckedChanged(object sender, EventArgs e)
    {
        mvwMain.SetActiveView(viwQuickLinks);
    }

    protected void radMadLibs_CheckedChanged(object sender, EventArgs e)
    {
        mvwMain.SetActiveView(viwMadLibs);
    }



    protected void btnGo_Click(object sender, EventArgs e)
    {

          Response.Redirect(ddlQuickLinks.SelectedValue);
    }

    protected void ddlExclamation_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["hex50_Exclamation"] = ddlExclamation.SelectedValue;
    }

    protected void radAdverbs_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["hex50_Adverb"] = radAdverbs.SelectedValue;
    }

    protected void lstNouns_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["hex50_Noun"] = lstNouns.SelectedValue;
    }
}