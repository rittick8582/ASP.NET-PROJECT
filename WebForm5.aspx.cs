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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-RO7KJEO\\SQLEXPRESS01;Initial Catalog=library1;Integrated Security=True"))
            {
                con.Open();
                // Use parameterized query to prevent SQL injection
                string str = "SELECT * FROM student WHERE uname = @username";
                using (SqlCommand cmd = new SqlCommand(str, con))
                {
                    // Add parameter value
                    cmd.Parameters.AddWithValue("@username", this.TextBox1.Text);

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "emp");

                    // Check for user existence
                    if (ds.Tables["emp"].Rows.Count > 0)
                    {
                        // Assuming you want to check for some additional condition
                        this.TextBox2.Text = ds.Tables["emp"].Rows[0].ItemArray[5].ToString();
                        // Provide a more informative message if login is valid
                        
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Wrong Username!');", true);
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                    }
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=DESKTOP-RO7KJEO\\SQLEXPRESS01;Initial Catalog=library1;Integrated Security=True";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                string str = "UPDATE student SET password = @Password WHERE uname = @Username";

                using (SqlCommand com = new SqlCommand(str, con))
                {
                    com.Parameters.AddWithValue("@Password", this.TextBox2.Text);
                    com.Parameters.AddWithValue("@Username", this.TextBox1.Text);

                    com.ExecuteNonQuery();
                }
            }

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password Update Successfully!');", true);
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}