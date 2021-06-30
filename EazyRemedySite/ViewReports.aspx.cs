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
    public partial class ViewReports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("~/LogIn.aspx");
            }

            IRemedy db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            lblID.Text = Session["Name"].ToString();

            int id = Convert.ToInt32(Session["id"]);

            foreach(var item in handler.getCareReports(id))
            {
                TableRow r = new TableRow();
                TableCell c0 = new TableCell();
                Label sessionID = new Label();
                sessionID.Text = item.SessionID.ToString();
                c0.Controls.Add(sessionID);
                r.Controls.Add(c0);
                TableCell c1 = new TableCell();
                Label fullName = new Label();
                fullName.Text = item.FullName;
                c1.Controls.Add(fullName);
                r.Controls.Add(c1);
                TableCell c2 = new TableCell();
                Label date = new Label();
                date.Text = item.Date.ToShortDateString();
                c2.Controls.Add(date);
                r.Controls.Add(c2);
                TableCell c3 = new TableCell();
                Label type = new Label();
                type.Text = item.Type;
                c3.Controls.Add(type);
                r.Controls.Add(c3);
                TableCell c4 = new TableCell();
                Label hoursworked = new Label();
                hoursworked.Text = item.hoursWorkerd;
                c4.Controls.Add(hoursworked);
                r.Controls.Add(c4);
                TableCell c5 = new TableCell();
                Label notes = new Label();
                notes.Text = item.Notes;
                c5.Controls.Add(notes);
                r.Controls.Add(c5);

                tbReports.Controls.Add(r);
            }
        }
    }
}