using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rough_bootstap
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void send_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Message Sent');", true);

        }
    }
}