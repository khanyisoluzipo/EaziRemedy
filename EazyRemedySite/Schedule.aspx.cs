using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using EazyRemedy.BLL;
using EazyRemedy.DAL;
using EazyRemedy.TypeLibrary.Interface;
using EazyRemedy.TypeLibrary.Models;
using EazyRemedy.TypeLibrary.ViewModels;

namespace EazyRemedySite
{
    public partial class Schedule : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("~/LogIn.aspx");
            }

            IRemedy db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            lblUser.Text = Session["Name"].ToString();

            int id = Convert.ToInt32(Session["id"]);

            foreach (var item in handler.viewBookings(id))
            {
                TableRow row = new TableRow();
                TableCell c0 = new TableCell();
                Label duration = new Label();
                duration.Text = item.Duration;
                c0.Controls.Add(duration);
                row.Controls.Add(c0);
                TableCell c1 = new TableCell();
                Label date = new Label();
                date.Text = item.Date.ToShortDateString();
                c1.Controls.Add(date);
                row.Controls.Add(c1);
                TableCell c2 = new TableCell();
                Label time = new Label();
                time.Text = item.Time;
                c2.Controls.Add(time);
                row.Controls.Add(c2);
                TableCell c3 = new TableCell();
                Label name = new Label();
                name.Text = item.FullName;
                c3.Controls.Add(name);
                row.Controls.Add(c3);
                TableCell c4 = new TableCell();
                Label type = new Label();
                type.Text = item.Type;
                c4.Controls.Add(type);
                row.Controls.Add(c4);
                TableCell c5 = new TableCell();
                Label activity = new Label();
                activity.Text = item.Description;
                c5.Controls.Add(activity);
                row.Controls.Add(c5);
                TableCell c6 = new TableCell();
                Label address = new Label();
                address.Text = item.Name;
                c6.Controls.Add(address);
                row.Controls.Add(c6);

                tblBookings.Controls.Add(row);
            }



        }
    }
}