using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ass1
{
    public partial class ProductDropdown : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string[] str = new string[] { "Select Product", "Lenovo IdeaPad", "Lenovo ThinkBook", "Lenovo ThinkPad" };
                for (int i = 0; i < str.Length; i++)
                {
                    DropDownList1.Items.Add(str[i]);
                }
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = DropDownList1.SelectedIndex.ToString();
            if (DropDownList1.Text == "Lenovo IdeaPad")
            {
                Label1.Text = "Rs 32,490";
            }
            else if (DropDownList1.Text == "Lenovo ThinkBook")
            {
                Label1.Text = "Rs 56,690";
            }
            else if (DropDownList1.Text == "Lenovo ThinkPad")
            {
                Label1.Text = "Rs 72,290";
            }
            else
                Label1.Text = "";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str = DropDownList1.Text;
            Image1.ImageUrl = "~/Images/" + str + ".jpg";
        }
    }
}
