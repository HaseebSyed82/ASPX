using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cis2350sp12_Demos_Demo34 : System.Web.UI.Page
{
    int rowCount = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
    }


    protected void rptEmployees_ItemDataBound(object sender, System.Web.UI.WebControls.RepeaterItemEventArgs e)
    {
        if ((e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem))
        {
            Literal litEmpID = (Literal)e.Item.FindControl("litEmpID");
            Literal litName = (Literal)e.Item.FindControl("litName");
            Literal litBirthDate = (Literal)e.Item.FindControl("litBirthDate");
            Literal litRowClass = (Literal)e.Item.FindControl("litRowClass");

            rowCount = rowCount + 1;

            litEmpID.Text = DataBinder.Eval(e.Item.DataItem, "EmpID").ToString();
            litName.Text = DataBinder.Eval(e.Item.DataItem, "FirstName").ToString() + " " + DataBinder.Eval(e.Item.DataItem, "LastName").ToString();
            litBirthDate.Text = DataBinder.Eval(e.Item.DataItem, "BirthDate").ToString();



            // 2 rows light background, then 2 rows dark background

            int group = (rowCount - 1) / 2;

            if ((group % 2) == 0)
                litRowClass.Text = "";
            else
                litRowClass.Text = " class=\"alt\"";

        }


        if ((e.Item.ItemType == ListItemType.Footer))
            litNumEmps.Text = rowCount.ToString();
    }


}