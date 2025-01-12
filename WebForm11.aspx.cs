﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-RO7KJEO\\SQLEXPRESS01;Initial Catalog=library1;Integrated Security=True");

            try
            {
                con.Open();
                string sql = "INSERT INTO books (bname, cate, aut, isbn, price) VALUES (@bname, @cate, @aut, @isbn, @price)";

                using (SqlCommand com = new SqlCommand(sql, con))
                {
                    // Add parameters to prevent SQL injection
                    com.Parameters.AddWithValue("@isbn", TextBox1.Text);
                    com.Parameters.AddWithValue("@bname", TextBox2.Text);
                    com.Parameters.AddWithValue("@cate", TextBox3.Text);
                    com.Parameters.AddWithValue("@aut", TextBox4.Text);
                    com.Parameters.AddWithValue("@price", TextBox5.Text);


                    com.ExecuteNonQuery();
                }

                // Display success message
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Books Data Submitted Successfully!');", true);

                // Clear TextBoxes
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
            }
            catch (Exception ex)
            {
                // Handle exception (you can log the error or show a message)
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error: " + ex.Message + "');", true);
            }
            finally
            {
                con.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("webForm6.aspx");
        }
    }
}
