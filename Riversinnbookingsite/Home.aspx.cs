using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Configuration;
using System.Web.Security;

namespace Rough_bootstap
{
    public partial class Home : System.Web.UI.Page
    {
        string name;
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack){


            }
        }

        protected void booknow_Click(object sender, EventArgs e)
        {
            int adults = 1;
            //adults = people.SelectedItem.;
            //int.Parse(people.SelectedValue.ToString());
            int childs = 1;
            //childs = int.Parse(people.SelectedValue.ToString());
            //int.Parse(children.SelectedValue.ToString());
            int guestid = 200;
            guestid = 200+1;

            DateTime chindt = DateTime.Today;
            //Convert.ToDateTime(checkindate.ToString());
            chindt = DateTime.Parse(checkindate.Text.ToString());
            DateTime choutdt = DateTime.Today;//Convert.ToDateTime(checkoutdate.ToString());
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(constr))
            {
                using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("Delete From TempBooking"))
                {
                    using (System.Data.SqlClient.SqlDataAdapter sda = new System.Data.SqlClient.SqlDataAdapter())
                    {

                        cmd.CommandType = System.Data.CommandType.Text;
                        cmd.Connection = con;
                        con.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("INSERT INTO [dbo].[TempBooking] ([Guest_id], [Total_Adult], [Total_Child], [Check_In_Date], [Check_Out_Date], [Booking_Date]) VALUES ( @guestid,@adult, @child, @checkin, @checkout,GETDATE())"))
                {
                    using (System.Data.SqlClient.SqlDataAdapter sda = new System.Data.SqlClient.SqlDataAdapter())
                    {
                        cmd.CommandType = System.Data.CommandType.Text;
                        cmd.Parameters.AddWithValue("@guestid", guestid);
                        cmd.Parameters.AddWithValue("@adult", adults);
                        cmd.Parameters.AddWithValue("@child", childs);
                        cmd.Parameters.AddWithValue("@checkin", chindt);
                        cmd.Parameters.AddWithValue("@checkout", choutdt);
                        //cmd.Parameters.AddWithValue("@booking_date", DateTime.Now.Date);
                        cmd.Connection = con;
                        con.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();
                        con.Close();

                    }
                }
            }

            if ((System.Web.HttpContext.Current.User != null) && System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Response.Redirect("PaypalPayment.aspx");

            }
            else
            {
                Response.Redirect("UserLogin.aspx");
                
            }
        }

        protected void SubButton_Click(object sender, EventArgs e)
        {
            using (MailMessage mm = new MailMessage("riversinn1234@gmail.com", SubscribeEmail.Text.Trim()))
            {
                mm.Subject = "Account Activation";
                string body = "Hello " + name.Trim() + ",";
                body += "<br /><br />Please click the following link to activate your account";
                body += "<br /><h1>Thankyou for subscribing to RiversINN</h1>";
                body += "<br /><br />Thanks";
                body += "<br /><br />GA";
                body += "<br /><br />Rivers INN Manager";
                mm.Body = body;
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("riversinn1234@gmail.com", "dope1234");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
            }

            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Subscribed Successfully')", true);
        }

        
    }
}