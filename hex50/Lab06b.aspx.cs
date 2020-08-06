using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hex50_Lab06b : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lstTopicSelection_SelectedIndexChanged(object sender, EventArgs e)
    {
        litTitle.Text = lstTopicSelection.SelectedValue;
        imgMain.ImageUrl = "images/Cars" + lstTopicSelection.SelectedValue + ".jpg";
        hypWikipedia.Text = "Click here to see " + lstTopicSelection.SelectedValue + " on Wikipedia";

        switch (lstTopicSelection.SelectedValue)
        {
            case "Corvette":
                hypWikipedia.NavigateUrl = "https://en.wikipedia.org/wiki/Corvette";
                break;
            case "Bugatti":
                hypWikipedia.NavigateUrl = "https://en.wikipedia.org/wiki/Bugatti_Veyron";
                break;
            case "Volkswagen":
                hypWikipedia.NavigateUrl = "https://en.wikipedia.org/wiki/Volkswagen";
                break;
            case "RollsRoyce":
                hypWikipedia.NavigateUrl = "https://en.wikipedia.org/wiki/Rolls-Royce_Motor_Cars";
                break;
            case "RangeRover":
                hypWikipedia.NavigateUrl = "https://en.wikipedia.org/wiki/Range_Rover_Evoque";
                break;
            case "Mustang":
                hypWikipedia.NavigateUrl = "https://en.wikipedia.org/wiki/Ford_Mustang";
                break;
            case "lamborghini":
                hypWikipedia.NavigateUrl = "https://en.wikipedia.org/wiki/Lamborghini";
                break;
            case "ferrari":
                hypWikipedia.NavigateUrl = "https://en.wikipedia.org/wiki/Ferrari";
                break;
        }
    }

    protected void ibnWiki_Click(object sender, ImageClickEventArgs e)
    {
        switch (lstTopicSelection.SelectedValue)
        {
            case "Corvette":
                Response.Redirect("https://en.wikipedia.org/wiki/Corvette");
                break;
            case "Bugatti":
                Response.Redirect("https://en.wikipedia.org/wiki/Bugatti_Veyron");
                break;
            case "Volkswagen":
                Response.Redirect("https://en.wikipedia.org/wiki/Volkswagen");
                break;
            case "RollsRoyce":
                Response.Redirect("https://en.wikipedia.org/wiki/Rolls-Royce_Motor_Cars");
                break;
            case "RangeRover":
                Response.Redirect("https://en.wikipedia.org/wiki/Range_Rover_Evoque");
                break;
            case "Mustang":
                Response.Redirect("https://en.wikipedia.org/wiki/Ford_Mustang");
                break;
            case "lamborghini":
                Response.Redirect("https://en.wikipedia.org/wiki/Lamborghini");
                break;
            case "ferrari":
                Response.Redirect("https://en.wikipedia.org/wiki/Ferrari");
                break;
        }
    }
}