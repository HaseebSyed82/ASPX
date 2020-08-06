using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo36c : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            litZipCode.Text = Request.Cookies["ZipCode"].Value;
            hypWeather.NavigateUrl="https://www.weather.com/weather/today/" + Request.Cookies["ZipCode"].Value;

        }
    }
}