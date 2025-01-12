using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=DESKTOP-RO7KJEO\\SQLEXPRESS01;Initial Catalog=library1;Integrated Security=True";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                // Use a parameterized query to prevent SQL injection
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM student WHERE uname = @username AND password = @pass", con))
                {
                    cmd.Parameters.AddWithValue("@username", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@pass", txtPassword.Text); // Ideally, hash the password before checking.

                    con.Open();

                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);

                        string userType = Dropdownlist1.SelectedValue; // Get selected user type

                        // Check if the user exists based on the query results
                        if (dt.Rows.Count > 0)
                        {
                            Session["user"] = TextBox1.Text; // Avoid storing passwords in session

                            // Redirect based on user type
                            if (userType == "Student")
                            {
                                Response.Redirect("WebForm4.aspx"); // Redirect to student dashboard
                            }
                        }
                        else
                        {
                            // Alert for invalid credentials
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Wrong Username or Password!');", true);
                        }
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string connectionString = "Data Source=DESKTOP-RO7KJEO\\SQLEXPRESS01;Initial Catalog=library1;Integrated Security=True";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                // Use a parameterized query to prevent SQL injection
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM admin WHERE uname = @username AND password = @pass", con))
                {
                    cmd.Parameters.AddWithValue("@username", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@pass", txtPassword.Text); // Ideally, hash the password before checking.

                    con.Open();

                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);

                        string userType = Dropdownlist1.SelectedValue; // Get selected user type

                        // Check if the user exists based on the query results
                        if (dt.Rows.Count > 0)
                        {
                            Session["user"] = TextBox1.Text; // Avoid storing passwords in session
                            if (userType == "Admin")
                            {
                                Response.Redirect("WebForm6.aspx"); // Redirect to admin dashboard
                            }
                        }
                        else
                        {
                            // Alert for invalid credentials
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Wrong Username or Password!');", true);
                        }
                    }
                }
            }
        }
    }
}