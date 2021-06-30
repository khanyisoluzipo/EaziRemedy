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

namespace EazyRemedySite
{
    public partial class SessionNotes : System.Web.UI.Page
    {
        //GetPatient patient = new GetPatient();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("~/LogIn.aspx");
            }

            IRemedy db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            drpPatient.DataSource = handler.getPatient();
            drpPatient.DataValueField = "RecipientID";
            drpPatient.DataTextField = "FullName";
            drpPatient.DataBind();
        }

        protected void btnReport_Click(object sender, EventArgs e)
        {
            IRemedy db = new DBAccess();
            DBHandler _handler = new DBHandler(db);
            addReport report = new addReport();

            report.RecipientID = int.Parse(drpPatient.SelectedValue.ToString());
            report.Date = DateTime.Parse(dtDate.Value.ToString());
            report.hoursWorked = txtHours.Text.ToString();
            report.Notes = txtNotes.Text.ToString();
            bool x = _handler.AddReport(report);

            if(x == true)
            {
                dtDate.Value = null;
                txtHours.Text = " ";
                txtNotes.Text = " ";
            }
        }
    }
}