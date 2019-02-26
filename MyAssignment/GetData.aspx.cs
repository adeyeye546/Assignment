using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class GetData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string USADB = ConfigurationManager.ConnectionStrings["RegistrationDB"].ConnectionString;

        SqlConnection con = new SqlConnection(USADB);
        SqlDataAdapter da = new SqlDataAdapter("Select * from NewRegisters", con);

        DataSet ds1 = new DataSet();
        da.Fill(ds1);

        GridView1.DataSource = ds1;
        GridView1.DataBind();
        
    }
}