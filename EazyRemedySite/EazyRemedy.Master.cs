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
    public partial class EazyRemedy : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IRemedy db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            GetProfile profile = new GetProfile();
            ViewPerson person = new ViewPerson();
            List<ViewPerson> list = handler.viewPerson();
            if (Session["Username"] != null)
            {
                homeID.Visible = true;
                scheduleID.Visible = true;
                notesID.Visible = true;
                reportID.Visible = true;
                CareWorker worker = new CareWorker();
                string email = Session["Username"].ToString();
                Session["Name"] = handler.userProfile(email).Name.ToString() + ' ' + handler.userProfile(email).Surname.ToString();
                Session["log"] = "Log Out";
               
                lbllogID.Text = Session["log"].ToString();
                lblWelcome.Text = "Welcome : " + Session["Name"].ToString();
                Session["UserID"] = profile.UserID.ToString().Trim();

                if(lbllogID.Text == "Log In")
                {
                    Session["Username"] = null;
                    lbllogID.Text = "Log Out";
                }

               foreach(ViewPerson view in list)
                {
                    //if(view.userType.ToString().Trim() == "Admin")
                    //{
                    //    homeID.Visible = false;
                    //    scheduleID.Visible = false;
                    //    notesID.Visible = false;
                    //    reportID.Visible = false;
                    //}

                    if(view.userType.ToString().Trim() == "Care Worker")
                    {
                        try
                        {
                            GetUserID user = new GetUserID();
                            Session["id"] = handler.getUserID(email).WorkerID.ToString();
                        }
                        catch (NullReferenceException)
                        {

                        }
                       
                    }
                }

            }
            else
            {
                lbllogID.Text = "Log In";
            }
          

           
        }
    }
}