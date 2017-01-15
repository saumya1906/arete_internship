
using System;

using System.Configuration;

using System.Data;

using System.Linq;

using System.Web;

using System.Web.Security;

using System.Web.UI;

using System.Web.UI.HtmlControls;

using System.Web.UI.WebControls;

using System.Web.UI.WebControls.WebParts;

using System.Xml.Linq;

using System.Data.SqlClient;

namespace saumya_project
{
    public partial class Edituser : System.Web.UI.Page
    {
        string ab = System.Configuration.ConfigurationManager.ConnectionStrings["SaumyaTestConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox3.Text = Calendar1.SelectedDate.ToShortDateString();
            //TextBox3.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
        }
        protected void btnUpdate(object sender, EventArgs e)
        {

            int id = (int)Session["ID"];
            SqlConnection con = new SqlConnection(ab);
            SqlCommand cmd = new SqlCommand("UPDATE Table_2 SET Name='" + TextBox1.Text + "', DOB='" + TextBox3.Text + "', State='" + State.SelectedValue + "', Address='"+ txtTextArea.Text + "', PIN='" + TextBox6.Text + "', Mobile='" + TextBox5.Text + "', Email='" + TextBox7.Text + "', UserID='" + TextBox8.Text + "', pwd='" + TextBox2.Text + "'WHERE ID='" + id +"'" , con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("HomePage.aspx");

        }
    }
}