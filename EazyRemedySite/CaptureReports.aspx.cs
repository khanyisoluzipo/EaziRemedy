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
    public partial class CaptureReports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("~/LogIn.aspx");
            }

            IRemedy db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            lblWorker.Text = Session["id"].ToString();
            drpRecipient.DataSource = handler.getPatient();
            drpRecipient.DataValueField = "RecipientID";
            drpRecipient.DataTextField = "FullName";
            drpRecipient.DataBind();

            drpActivity.DataSource = handler.GetActivity();
            drpActivity.DataValueField = "activityID";
            drpActivity.DataTextField = "Type";
            drpActivity.DataBind();
        }

        protected void btnReports_Click(object sender, EventArgs e)
        {
            IRemedy db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            addReport _report = new addReport();

            _report.WorkerID = int.Parse(lblWorker.Text.ToString());
            _report.RecipientID = int.Parse(drpRecipient.SelectedValue);
            _report.Date = DateTime.Parse(dtDate.Value.ToString());
            _report.activityID = int.Parse(drpActivity.SelectedValue.ToString());
            _report.hoursWorked = txtHours.Text.ToString();
            _report.Notes = txtNotes.Text.ToString();

            bool c = handler.AddReport(_report);

            dtDate.Value = null;
            txtHours.Text = " ";
            txtNotes.Text = " ";
        }
    }
}