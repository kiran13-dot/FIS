using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ass1
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["LoginCookie"] != null)
            {
                Response.Redirect("HomePage.aspx");
            }
        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {

        }
    }
}