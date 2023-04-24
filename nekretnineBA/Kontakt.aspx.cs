using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Kontakt : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = DESKTOP-O8HJ9KL\SQLEXPRESS;" +
                          "Initial Catalog = nekretnineBA;" +
                          "Integrated Security = SSPI;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Kontakt (Ime,Email,Broj,Poruka) VALUES ('" + ime.Text + "','" + email.Text + "','" + broj.Text + "','" + poruka.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("temp.html");

            
        }

        
    }
}