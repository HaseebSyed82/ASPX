using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo17 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDivide_Click(object sender, EventArgs e)
    {
        int dividned;
        int divisor;
        int quotient;

        try
        {

            dividned = Convert.ToInt32(txtDividend.Text);
            divisor = Convert.ToInt32(txtDivisor.Text);

            //if (divisor == 0)
            //{
            //    litResults.Text = "You cannot divide by zero";

            //    return;
            //}

            quotient = dividned / divisor;

            litResults.Text = "The quotient is " + quotient;

            litDateTime.Text = "Processed at " + DateTime.Now;

        }
        catch(FormatException)
        {
            litResults.Text = "You musr enter two integers. Please try again.";

        }
        catch (DivideByZeroException)
        {
            litResults.Text = "You can not divide by zero. Please try again.";

        }
        catch (Exception ex)
        {
            litResults.Text = "An error occured: " + ex.Message;
        }


    }
}