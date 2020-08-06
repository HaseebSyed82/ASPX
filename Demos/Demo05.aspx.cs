using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnChkPrime1_Click(object sender, EventArgs e)
    {
        CheckAndUpadteLabelIfPrime(txtNumber1.Text);
    }

    protected void btnChkPrime2_Click(object sender, EventArgs e)
    {
        CheckAndUpadteLabelIfPrime(txtNumber2.Text);
    }
    private void CheckAndUpadteLabelIfPrime(string number)
    {
        CheckAndUpadteLabelIfPrime(Convert.ToInt32(number));
    }

    private void CheckAndUpadteLabelIfPrime(int number)
    {
        if (IsPrime(number))
            litResults.Text = number + " is prime.";
        else
            litResults.Text = number + " is not prime.";  
    }

    private bool IsPrime(int value)
    {
        for (int counter=2; counter < value; counter++)
        {
            if (value % counter == 0)
                return false;
        }
        return true;
    }
}