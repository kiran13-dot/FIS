using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ass2
{
    public partial class homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateValidator.MaximumValue = DateTime.Today.ToShortDateString();
            DateValidator.MinimumValue = DateTime.Today.ToShortDateString();
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Label1.Text = "Record saved successfully!";
                Label1.ForeColor = System.Drawing.Color.LightSeaGreen;
            }
            else
            {
                Label1.Text = "Please check all mandatory field";
                Label1.ForeColor = System.Drawing.Color.MistyRose;

            }
        }
    }
}