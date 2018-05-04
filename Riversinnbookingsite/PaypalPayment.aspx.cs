using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RiversInnBookingWebsite
{
    public partial class PaypalPayment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void PayWithPayPal(string amount, string itemInfo, string name,
        string phone, string email, string currency)
        {
            string redirecturl = "";

            //Mention URL to redirect content to paypal site
            redirecturl += "https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=" +
                           ConfigurationManager.AppSettings["paypalemail"].ToString();

            //First name i assign static based on login details assign this value
            redirecturl += "&first_name=" + name;

            //City i assign static based on login user detail you change this value
            redirecturl += "&city=Normal";

            //State i assign static based on login user detail you change this value
            redirecturl += "&state=Illinois";

            //Product Name
            redirecturl += "&item_name=" + itemInfo;

            //Product Name
            redirecturl += "&amount=" + amount;

            //Phone No
            redirecturl += "&night_phone_a=" + phone;

            //Product Name
            redirecturl += "&item_name= Room Charge";

            //Address 
            redirecturl += "&address1=" + email;

            //Business contact id
            redirecturl += "&business=rishb23@gmail.com";

            //Shipping charges if any
            redirecturl += "&shipping=0";

            //Handling charges if any
            redirecturl += "&handling=0";

            //Tax amount if any
            redirecturl += "&tax=0";

            //Add quatity i added one only statically 
            redirecturl += "&quantity=1";

            //Currency code 
            redirecturl += "&currency=" + currency;

            //Success return page url
            redirecturl += "&return=" +
              ConfigurationManager.AppSettings["SuccessURL"].ToString();

            //Failed return page url
            redirecturl += "&cancel_return=" +
              ConfigurationManager.AppSettings["FailedURL"].ToString();

            Response.Redirect(redirecturl);
        }
        protected void btnPay_Click(object sender, EventArgs e)
        {
            int guestid = getID();
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(constr))
            {
                using (System.Data.SqlClient.SqlCommand command = new System.Data.SqlClient.SqlCommand("Delete from Guest_Details where Guest_ID= @guestid"))
                {
                    using (System.Data.SqlClient.SqlDataAdapter sda = new System.Data.SqlClient.SqlDataAdapter())
                    {
                        command.CommandType = System.Data.CommandType.Text;
                        command.Parameters.AddWithValue("@guestid", guestid);
                        command.Connection = con;
                        con.Open();
                        command.ExecuteScalar();
                        con.Close();

                    }
                }
            }
            using (System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(constr))
            {
                    using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("INSERT INTO Guest_Details VALUES(@guestid,@FirstName, @LastName,@EmailId,@Username,@Address,@City,@State,@Zip)"))
                {
                    using (System.Data.SqlClient.SqlDataAdapter sda = new System.Data.SqlClient.SqlDataAdapter())
                    {
                        cmd.CommandType = System.Data.CommandType.Text;
                        cmd.Parameters.AddWithValue("@guestid", guestid);
                        cmd.Parameters.AddWithValue("@Username", this.Page.User.ToString());
                        cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
                        cmd.Parameters.AddWithValue("@FirstName", txtName.Text);
                        cmd.Parameters.AddWithValue("@EmailId", txtEmailId.Text);
                        cmd.Parameters.AddWithValue("@Address", TextBoxStAddress.Text);
                        cmd.Parameters.AddWithValue("@City", TextBoxCity.Text);
                        cmd.Parameters.AddWithValue("@Zip", TextBoxZIP.Text);
                        cmd.Parameters.AddWithValue("@State", TextBoxState.Text);

                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteScalar();
                        con.Close();
                    }
                }
            }
            PayWithPayPal(LblAmount.Text, ddlCurrency.SelectedItem.Text, txtEmailId.Text, txtName.Text, txtPhone.Text, "");
        }
        protected int getID()
        {
            int id;
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(constr))
            {
                using (System.Data.SqlClient.SqlCommand getGuestid = new System.Data.SqlClient.SqlCommand("Select Guest_id from TempBooking where Booking_Date=@date"))
                {
                    using (System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter())
                    {
                        getGuestid.Parameters.AddWithValue("@date", DateTime.Now.Date);
                        getGuestid.Connection = con;
                        con.Open();
                        id = Convert.ToInt32(getGuestid.ExecuteScalar());
                        con.Close();
                    }
                }
            }
            return id;
        }
    }
}