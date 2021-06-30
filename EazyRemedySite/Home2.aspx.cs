using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EazyRemedy.BLL;
using EazyRemedy.DAL;
using EazyRemedy.TypeLibrary.Interface;
using EazyRemedy.TypeLibrary.ViewModels;
namespace EazyRemedySite
{
    public partial class Home2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //IRemedy db = new DBAccess();
            //DBHandler handler = new DBHandler(db);

            //foreach(var item in handler.getBookings())
            //{
            //    TableRow rw = new TableRow();
            //    TableCell c0 = new TableCell();
            //    Label duration = new Label();
            //    duration.Text = item.Duration;
            //    c0.Controls.Add(duration);
            //    rw.Controls.Add(c0);
            //    TableCell c1 = new TableCell();
            //    Label date = new Label();
            //    date.Text = item.Date.ToLongDateString();
            //    c1.Controls.Add(date);
            //    rw.Controls.Add(c1);
            //    TableCell c2 = new TableCell();
            //    Label time = new Label();
            //    time.Text = item.Time;
            //    c2.Controls.Add(time);
            //    rw.Controls.Add(c2);
            //    TableCell c3 = new TableCell();
            //    Label fullname = new Label();
            //    fullname.Text = item.FullName;
            //    c3.Controls.Add(fullname);
            //    rw.Controls.Add(c3);
            //    TableCell c4 = new TableCell();
            //    Label description = new Label();
            //    description.Text = item.Description;
            //    c4.Controls.Add(description);
            //    rw.Controls.Add(c4);
            //    TableCell c5 = new TableCell();
            //    Label name = new Label();
            //    name.Text = item.Name;
            //    c5.Controls.Add(name);
            //    rw.Controls.Add(c5);

            //    tbBookings.Controls.Add(rw);

            //}
        }
    }
}