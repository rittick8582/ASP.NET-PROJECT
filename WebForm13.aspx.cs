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
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-RO7KJEO\\SQLEXPRESS01;Initial Catalog=library1;Integrated Security=True"))
            {
                try
                {
                    con.Open();
                    string sql = "DELETE FROM books WHERE isbn = @isbn";

                    using (SqlCommand com = new SqlCommand(sql, con))
                    {
                        // Add parameters to prevent SQL injection
                        com.Parameters.Add("@isbn", System.Data.SqlDbType.VarChar).Value = TextBox1.Text;

                        com.ExecuteNonQuery();
                    }

                    // Display success message
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Books Deleted Successfully!');", true);

                    // Clear TextBox
                    TextBox1.Text = "";
                }
                catch (Exception ex)
                {
                    // Handle exception (you can log the error or show a message)
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error: " + ex.Message.Replace("'", "\\'") + "');", true);
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("webForm6.aspx");
        }
    }
}
