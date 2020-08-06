using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Demos_Demo16 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUpadate_Click(object sender, EventArgs e)
    {
        SqlConnection myConnection = default(SqlConnection);
        SqlCommand myCommand = default(SqlCommand);
        int ra;

        ConnectionStringSettings myConnectString = ConfigurationManager.ConnectionStrings["ConnectionDB01"];

        myConnection = new SqlConnection(myConnectString.ConnectionString);
        myConnection.Open();

        myCommand = new SqlCommand("sp_hex50UpdEmpLastName", myConnection);
        myCommand.CommandType = CommandType.StoredProcedure;

        myCommand.Parameters.Add("@pEmpID", SqlDbType.Decimal, 8);
        myCommand.Parameters["@pEmpID"].Value = txtEmpID.Text;

        myCommand.Parameters.Add("@pLastName", SqlDbType.NVarChar, 30);
        myCommand.Parameters["@pLastName"].Value = txtLastName.Text;

        ra = myCommand.ExecuteNonQuery();
        myConnection.Close();

        grdEmployees.DataBind();

    }
}