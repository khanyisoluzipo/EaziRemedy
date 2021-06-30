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
    public partial class LogIn : System.Web.UI.Page
    {
        ViewPerson person = new ViewPerson();
        protected void Page_Load(object sender, EventArgs e)
        {
            IRemedy db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            if(Session["log"] != null)
            {
                Session["log"] = "Log In";
                Session["log"] = null;
                Session["Username"] = null;
            }

        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            if(Session["log"] != null)
            {
                Session["log"] = "Log In";
                Session["log"] = null;
            }

            Session["Clicked"] = "Clicked";
            IRemedy db = new DBAccess();
            DBHandler handler = new DBHandler(db);
            GetProfile profile = new GetProfile();
            bool valid = false;
            List<ViewPerson> list = handler.viewPerson();
            string role = " ";

            foreach(ViewPerson view in list)
            {
                if((view.Username.ToString().Trim() == txtUsername.Text.ToString() || view.Email.ToString().Trim() == txtUsername.Text.ToString()) && view.Password.ToString().Trim() == txtPassword.Text.ToString())
                {
                    if(view.userType.ToString().Trim() == "Care Worker")
                    {
                        Session["UserID"] = view.Email.ToString().Trim();
                        valid = true;
                        role = "Care Worker";

                        Session["Username"] = view.Email.ToString().Trim();
                        break;
                    }
                    else if(view.userType.ToString().Trim() == "Care Recipient")
                    {
                        valid = true;
                        role = "Care Recipient";
                        Session["Username"] = txtUsername.Text.ToString();

                        break;
                    }
                    else if(view.userType.ToString().Trim() == "Admin")
                    {
                        valid = true;
                        role = "Admin";
                        Session["Username"] = view.Email.ToString().Trim();

                        break;
                    }
                }
            }
            if(valid == false)
            {
                lblMessage.Visible = true;
            }
            else
            {
                if(role == "Care Worker")
                {
                    Home h = new Home();
                    Response.Redirect("~/Home.aspx");
                }
                else if(role == "Care Recipient")
                {
                    Session["show"] = "CareRecipent";
                    Response.Redirect("");
                }
                else if(role == "Admin")
                {
                    Home2 h2 = new Home2();

                    Session["show"] = "admin";
                    Response.Redirect("~/Home2.aspx");

                }
            }
        }
    }
}