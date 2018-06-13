using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MagazynyConnectionString"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("ProductDesc"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@ProductID", int.Parse(TextBox1.Text)));
                conn.Open();
                cmd.Connection = conn;

                using (SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection))
                {
                    while (rdr.Read())
                    {
                        string ProductName = rdr.GetString(rdr.GetOrdinal("ProductName"));
                        string CategoryName = rdr.GetString(rdr.GetOrdinal("CategoryName"));
                        string Color = rdr.GetString(rdr.GetOrdinal("Color"));
                        int WheelDiameter = rdr.GetInt32(rdr.GetOrdinal("WheelDiameter"));
                        int FrameSize = rdr.GetInt32(rdr.GetOrdinal("FrameSize"));
                        string Specification = rdr.GetString(rdr.GetOrdinal("Specification"));
                        ProductDescription.Text = ProductName + ' ' + CategoryName + ' ' + Color + ' ' + WheelDiameter.ToString() + ' ' + FrameSize.ToString() + ' ' + Specification;
                    }
                    rdr.Close();
                }
            }
        }
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataKey dk = GridView1.SelectedDataKey;
        int a = 0;
        FormView1.PageIndex = 0;
        FormView1.DataBind();
        while (FormView1.DataKey.Value.ToString() != dk.Value.ToString() && a < FormView1.PageCount)
        {
            if (a + 1 < FormView1.PageCount)
            {
                FormView1.PageIndex++;
                FormView1.DataBind();
            }
        }
    }
}