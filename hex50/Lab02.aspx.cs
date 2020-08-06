using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class hex50_Lab02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        lblDisplatText.Text = txtUserEntry.Text;
    }

    protected void ddlFontSize_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblDisplatText.Font.Size = FontUnit.Parse(ddlFontSize.SelectedValue);
    }

    protected void chkBold_CheckedChanged(object sender, EventArgs e)
    {
        lblDisplatText.Font.Bold = chkBold.Checked;
    }

    protected void chkItalics_CheckedChanged(object sender, EventArgs e)
    {
        lblDisplatText.Font.Italic = chkItalics.Checked;
    }

    protected void chkVisisble_CheckedChanged(object sender, EventArgs e)
    {
        lblDisplatText.Visible = chkVisisble.Checked;
    }

    protected void ddlForeColor_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblDisplatText.ForeColor = Color.FromName(ddlForeColor.SelectedValue);
    }

    protected void ddlBackColor_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblDisplatText.BackColor = Color.FromName(ddlBackColor.SelectedValue);
    }
}