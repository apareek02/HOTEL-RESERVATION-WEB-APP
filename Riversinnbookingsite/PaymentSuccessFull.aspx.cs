using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RiversInnBookingWebsite
{
    public partial class PaymentSuccessFull : System.Web.UI.Page
    {
        Int64 bid;
        int gid, adults, child;

        DateTime cin, cout, bdate;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                    string constring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlConnection con = new SqlConnection(constring);
                    con.Open();
                    string str = " Select Booking_id, Guest_id, Booking_Date, Total_Adult, Total_Child, Check_In_Date, Check_Out_Date, Booking_Date From TempBooking where Booking_Date = GETDATE()";
                    SqlCommand com = new SqlCommand(str, con);

                    SqlDataReader dr;
                    dr = com.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            bid = Convert.ToInt64(dr["Booking_id"]);
                            gid = Convert.ToInt32(dr["Guest_id"]);
                            adults = Convert.ToInt32(dr["Total_Adult"]);
                            child = Convert.ToInt32(dr["Total_Child"]);
                            cin = Convert.ToDateTime(dr["Check_In_Date"]);
                            cout = Convert.ToDateTime(dr["Check_Out_Date"]);
                            bdate = Convert.ToDateTime(dr["Booking_Date"]);
                        }
                        dr.Close();
                        con.Close();
                    }
                


                string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                using (System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(constr))
                {
                using (System.Data.SqlClient.SqlCommand command = new System.Data.SqlClient.SqlCommand("INSERT  INTO Booking (Guest_id,Total_Adult,Total_Child,Check_In_Date,Check_Out_Date,Booking_Date) Values(@bid,@gid,@ta,@tc,@cin,@cout,@bdate)"))
                {
                    using (System.Data.SqlClient.SqlDataAdapter sda = new System.Data.SqlClient.SqlDataAdapter())
                    {
                            bid = bid + 1;
                        command.CommandType = System.Data.CommandType.Text;
                            command.Parameters.AddWithValue("@gid", gid);
                            command.Parameters.AddWithValue("@ta", adults);
                            command.Parameters.AddWithValue("@tc", child);
                            command.Parameters.AddWithValue("@cin", cin);
                            command.Parameters.AddWithValue("@cout", cout);
                            command.Parameters.AddWithValue("@bdate", bdate);
                            command.Connection = connection;
                        connection.Open();
                            command.ExecuteScalar();
                        connection.Close();
                    }
                }
            }
            deleteTempBookingData();
            Response.Redirect("GenerateReport.aspx");
        }
    }

    private void deleteTempBookingData()
    {
        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("DELETE FROM TempBooking WHERE Booking_id = @bid"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@bid", bid);
                    cmd.Connection = con;
                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    con.Close();

                }
            }
        }
    }
}
}