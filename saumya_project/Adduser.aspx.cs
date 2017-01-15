
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
    public partial class Adduser : System.Web.UI.Page
    {
        string ab = System.Configuration.ConfigurationManager.ConnectionStrings["SaumyaTestConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ab);
            SqlCommand cmd = new SqlCommand("INSERT INTO Table_2(Name,DOB,State,Address,PIN,Mobile,Email,UserID,pwd) VALUES('" + TextBox1.Text + "','" + TextBox3.Text + "','" + State.SelectedValue + "','" + txtTextArea.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox2.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("HomePage.aspx");
            //or

        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adduser.aspx");
            //or

        }
        protected void btnUserAccount(object sender, EventArgs e)
        {

            Response.Redirect("UserAccount.aspx");
            //or

        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox3.Text = Calendar1.SelectedDate.ToShortDateString();
            //TextBox3.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
        }
        protected void ValidateUser(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ab);

            using (SqlCommand cmd = new SqlCommand("SELECT * FROM Table_2 WHERE Name=@Username AND pwd=@Password", con))
            {
                cmd.Parameters.AddWithValue("@Username", Login1.UserName);
                cmd.Parameters.AddWithValue("@Password", Login1.Password);
                con.Open();
                int id;       
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
         {
                    if (dr.Read())
                    {
                        id = (int)dr["ID"];
                        Session["ID"] = id;
                        Response.Redirect("home.aspx");
                    }
//                  FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);

                }
        else
        {
                    lblMsg.Text = "Incorrect Username or Password";

            //        Response.Redirect("Adduser.aspx");
                    //invalid login
                }
            }
            con.Close();
           
            }
        }
    }
