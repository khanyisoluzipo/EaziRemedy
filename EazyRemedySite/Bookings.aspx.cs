using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EazyRemedy.BLL;
using EazyRemedy.DAL;
using EazyRemedy.TypeLibrary.Interface;
using EazyRemedy.TypeLibrary.Models;
using EazyRemedy.TypeLibrary.ViewModels;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;

namespace EazyRemedySite
{
    public partial class Bookings : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
     
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Username"] == null)
            {
                Response.Redirect("~/LogIn.aspx");
            }
            
            if (!Page.IsPostBack)
            {
                IRemedy db = new DBAccess();
                DBHandler handler = new DBHandler(db);
                List<uspBookings> view = handler.getBookings();
               
                table.Append("<table id ='bookingsTb' class='table'>");
                table.Append("<thead>");
                table.Append("<tr><th>Duration</th><th>Date</th><th>Time</th><th>FullName</th><th>Care Activity</th><th>Address</th></tr>");
                table.Append("</thead>");
                table.Append("<tbody>");

                foreach(uspBookings bookings in view)
                {
                    table.Append("<tr>");
                    table.Append(bookings.Duration.ToString());
                    table.Append(bookings.Date.ToString());
                    table.Append(bookings.Time.ToString());
                    table.Append(bookings.FullName.ToString());
                    table.Append(bookings.Description.ToString());
                    table.Append(bookings.Name.ToString());
                    table.Append("</tr>");
                }

                table.Append("</tbody>");
                table.Append("</table>");
                Panel1.Controls.Add(new Literal { Text = table.ToString() });
            }
            

      

          

        }

        protected void drpPatient_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            //IRemedy db = new DBAccess();
            //DBHandler handler = new DBHandler(db);

            //int id = Convert.ToInt32(Session["id"]);
            //int patient = int.Parse(drpPatient.SelectedValue.ToString());

            //List<uspViewBookings> list = handler.GetBookings(patient);

            //try
            //{
            //    if (drpPatient.SelectedValue.ToString() != null)
            //    {
            //        foreach (uspViewBookings bookings in list)
            //        {
            //            TableRow row = new TableRow();
            //            TableCell c0 = new TableCell();
            //            c0.Text = bookings.Duration.ToString();
            //            TableCell c1 = new TableCell();
            //            c1.Text = bookings.Date.ToString();
            //            TableCell c2 = new TableCell();
            //            c2.Text = bookings.Time.ToString();
            //            TableCell c3 = new TableCell();
            //            c3.Text = bookings.FullName.ToString();
            //            TableCell c4 = new TableCell();
            //            c4.Text = bookings.Description.ToString();
            //            TableCell c5 = new TableCell();
            //            c5.Text = bookings.Name.ToString();

            //            row.Controls.Add(c0);
            //            row.Controls.Add(c1);
            //            row.Controls.Add(c2);
            //            row.Controls.Add(c3);
            //            row.Controls.Add(c4);
            //            row.Controls.Add(c5);

            //            tblBokkings.Controls.Add(row);
            //        }
            //    }

            //}
            //catch (Exception)
            //{
            //   // lblText.Text = "<script>alert(No bookings were made);</script>";
            //}


        }
    }
}