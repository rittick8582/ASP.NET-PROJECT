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
    public partial class WebForm16 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initial data binding if necessary
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-RO7KJEO\\SQLEXPRESS01;Initial Catalog=library1;Integrated Security=True"))
            {
                con.Open();
                // Use parameterized query to prevent SQL injection
                string str = "SELECT * FROM student WHERE stuid = @username";
                using (SqlCommand cmd = new SqlCommand(str, con))
                {
                    // Add parameter value
                    cmd.Parameters.AddWithValue("@username", this.TextBox1.Text);

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        // User exists
                        this.DataGrid1.DataSource = ds;
                        this.DataGrid1.DataBind();

                        // Change header text after data binding
                        ChangeHeaderText();
                    }
                    else
                    {
                        // User does not exist
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Wrong Student Id No!');", true);
                        TextBox1.Text = "";
                    }
                }
            }
        }

        private void ChangeHeaderText()
        {
            this.DataGrid1.Columns[0].HeaderText = "Student ID";
            this.DataGrid1.Columns[1].HeaderText = "Full Name";
            this.DataGrid1.Columns[2].HeaderText = "Email";
            this.DataGrid1.Columns[3].HeaderText = "Mobile No";
            this.DataGrid1.Columns[4].HeaderText = "User Name";
            this.DataGrid1.Columns[5].HeaderText = "Password";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("webForm6.aspx");
        }
    }
}