using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using EazyRemedy.BLL;
using EazyRemedy.DAL;
using EazyRemedy.TypeLibrary.Interface;
using EazyRemedy.TypeLibrary.ViewModels;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;

namespace EazyRemedySite
{
    public partial class Invoice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IRemedy db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            drpClient.DataSource = handler.getClient();
            drpClient.DataValueField = "ClientID";
            drpClient.DataTextField = "FullName";
            drpClient.DataBind();
        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            IRemedy db = new DBAccess();
            DBHandler handler = new DBHandler(db);

            DateTime date = DateTime.Now;
            string Invoice = DateTime.Now.Hour.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
            string nowDayWord = (date.ToString("dddd"));
            int nowDay = int.Parse(date.ToString("dd"));
            string month = (date.ToString("MMMM yyyy"));

            int id = int.Parse(drpClient.SelectedValue);

            lblName.Text = handler.getAddress(id).FullName.ToString();
            lblAddress.Text = handler.getAddress(id).residentialAddress.ToString();
            inNo.Text = Invoice.ToString();
            inDate.Text = nowDayWord + " " + nowDay + " " + month;
            inDue.Text = nowDay + 5 + " " + month;

            double hourlyRate = 60.00;
            double amaount = 0;
            foreach(var item in handler.generateInvoice(id))
            {
                TableRow rw = new TableRow();
                TableCell c0 = new TableCell();
                Label sessionid = new Label();
                sessionid.Text = item.SessionID.ToString();
                c0.Controls.Add(sessionid);
                rw.Controls.Add(c0);
                TableCell c1 = new TableCell();
                Label clientname = new Label();
                clientname.Text = item.ClientName;
                c1.Controls.Add(clientname);
                rw.Controls.Add(c1);
                TableCell c2 = new TableCell();
                Label carerecipient = new Label();
                carerecipient.Text = item.CareRecipient;
                c2.Controls.Add(carerecipient);
                rw.Controls.Add(c2);
                TableCell c3 = new TableCell();
                Label indate = new Label();
                indate.Text = item.Date.ToLongDateString();
                c3.Controls.Add(indate);
                rw.Controls.Add(c3);
                TableCell c4 = new TableCell();
                Label hoursworked = new Label();
                hoursworked.Text = item.hoursWorked;
                c4.Controls.Add(hoursworked);
                rw.Controls.Add(c4);
                TableCell c5 = new TableCell();
                Label hourlyrate = new Label();
                hourlyrate.Text = hourlyRate.ToString();
                c5.Controls.Add(hourlyrate);
                rw.Controls.Add(c5);
                amaount += hourlyRate * double.Parse(item.hoursWorked);
                TableCell c6 = new TableCell();
                Label type = new Label();
                type.Text = item.Type;
                c6.Controls.Add(type);
                rw.Controls.Add(c6);

                tbInvoice.Controls.Add(rw);
            }

            lbAmount.Text = "R " + amaount;

        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=print.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);

            panelPDF.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 10f);
            HTMLWorker htmlParser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);

            pdfDoc.Open();
            htmlParser.Parse(sr);
            pdfDoc.Close();

            Response.Write(pdfDoc);
            Response.End();
        }
        //public override void VerifyRenderingInServerForm(Control control)
        //{
        //    return;
        //}
    }
}