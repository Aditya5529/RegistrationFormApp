using System;
using System.Web.UI;
using System.Xml.Linq;
using MySql.Data.MySqlClient;
namespace YourNamespace
{

    public partial class register : System.Web.UI.Page
    {
        protected void RegisterUser(object sender, EventArgs e)
        {
            // Registration logic here
            // Database connection string
            string connString = "Server=localhost;Port=8889;Database=registration_db;Uid=root;Pwd=root;";

            // Get form data
            string name = txtName.Text;
            string dob = txtDob.Text;
            string email = txtEmail.Text;
            string contact = txtContact.Text;

            // SQL query to insert data into the users table
            string query = "INSERT INTO users (name, dob, email, contact) VALUES (@name, @dob, @email, @contact)";

            try
            {
                using (MySqlConnection conn = new MySqlConnection(connString))
                {
                    conn.Open();
                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        // Add parameters to prevent SQL injection
                        cmd.Parameters.AddWithValue("@name", name);
                        cmd.Parameters.AddWithValue("@dob", dob);
                        cmd.Parameters.AddWithValue("@email", email);
                        cmd.Parameters.AddWithValue("@contact", contact);

                        // Execute the query
                        cmd.ExecuteNonQuery();
                    }
                }

                // Success message
                Response.Write("<script>alert('Registration successful!');</script>");
            }
            catch (Exception ex)
            {
                // Error message
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
    }
}
