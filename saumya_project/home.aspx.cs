
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
    public partial class home : System.Web.UI.Page
    {
        string ab = System.Configuration.ConfigurationManager.ConnectionStrings["SaumyaTestConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = (int)Session["ID"];
            SqlConnection con = new SqlConnection(ab);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Table_2 WHERE ID='"+id+"'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                Label1.Text = (string)dr["Name"];
                DateTime var = (DateTime)dr["DOB"];
                Label2.Text = var.ToString("dd/MM/yyyy");
                Label3.Text = (string)dr["State"];
                Label4.Text = (string)dr["Address"];
                Label5.Text = dr["PIN"].ToString();
                Label6.Text = dr["Mobile"].ToString();
                Label7.Text = (string)dr["Email"];
                Label8.Text = dr["UserID"].ToString();
                Label9.Text = (string)dr["Name"];

            }

            con.Close();
        }
        protected void btnEdit(object sender, EventArgs e)
        {
            int id = (int)Session["ID"];
            Session["ID"] = id;
            Response.Redirect("Edituser.aspx");
            //or

        }
        protected void btnDelete(object sender, EventArgs e)
        {
            int id = (int)Session["ID"];
            SqlConnection con = new SqlConnection(ab);
            SqlCommand cmd = new SqlCommand("DELETE FROM Table_2 WHERE ID='" + id + "'",con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Deleteuser.aspx");
            //or

        }
    }
}