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
    public partial class WebForm15 : System.Web.UI.Page
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
                string str = "SELECT * FROM issbook WHERE stuid = @username";
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
                        this.TextBox2.Text = ds.Tables["emp"].Rows[0].ItemArray[1].ToString();
                        this.TextBox3.Text = ds.Tables["emp"].Rows[0].ItemArray[2].ToString();
                        this.TextBox4.Text = ds.Tables["emp"].Rows[0].ItemArray[3].ToString();
                        this.TextBox5.Text = ds.Tables["emp"].Rows[0].ItemArray[4].ToString();
                        // Provide a more informative message if login is valid

                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Wrong UserId!');", true);
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
                string str = "UPDATE issbook SET isbn=@name,issdate=@mail,retdate=@mno,fine=@uname WHERE stuid = @stuid";

                using (SqlCommand com = new SqlCommand(str, con))
                {
                    com.Parameters.AddWithValue("@name", this.TextBox2.Text);
                    com.Parameters.AddWithValue("@mail", this.TextBox3.Text);
                    com.Parameters.AddWithValue("@mno", this.TextBox4.Text);
                    com.Parameters.AddWithValue("@uname", this.TextBox5.Text);
                    com.Parameters.AddWithValue("@stuid", this.TextBox1.Text);

                    com.ExecuteNonQuery();
                }
            }

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Profil Update Successfully!');", true);
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            DateTime startdate = DateTime.Parse(TextBox3.Text);
            DateTime enddate = DateTime.Parse(TextBox4.Text);
            if (startdate > enddate)
            {
                return;
            }
            int days = (enddate - startdate).Days;
            double finerate = 12.75;
            double fineamount = days * finerate;
            TextBox5.Text = fineamount.ToString("0.00");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("webForm6.aspx");
        }
    }
}