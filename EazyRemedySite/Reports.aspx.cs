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
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IRemedy db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            foreach(var item in handler.ViewReports())
            {
                TableRow row = new TableRow();
                TableCell c0 = new TableCell();
                Label sessionID = new Label();
                sessionID.Text = item.SessionID.ToString();
                c0.Controls.Add(sessionID);
                row.Controls.Add(c0);
                TableCell c1 = new TableCell();
                Label workerID = new Label();
                workerID.Text = item.WorkerID.ToString();
                c1.Controls.Add(workerID);
                row.Controls.Add(c1);
                TableCell c2 = new TableCell();
                Label careRecipient = new Label();
                careRecipient.Text = item.CareRecipient;
                c2.Controls.Add(careRecipient);
                row.Controls.Add(c2);
                TableCell c3 = new TableCell();
                Label date = new Label();
                date.Text = item.Date.ToShortDateString();
                c3.Controls.Add(date);
                row.Controls.Add(c3);
                TableCell c4 = new TableCell();
                Label type = new Label();
                type.Text = item.Type;
                c4.Controls.Add(type);
                row.Controls.Add(c4);
                TableCell c5 = new TableCell();
                Label hoursworked = new Label();
                hoursworked.Text = item.hoursWorked;
                c5.Controls.Add(hoursworked);
                row.Controls.Add(c5);
                TableCell c6 = new TableCell();
                Label notes = new Label();
                notes.Text = item.Notes;
                c6.Controls.Add(notes);
                row.Controls.Add(c6);

                tbReports.Controls.Add(row);
            }
        }
    }
}