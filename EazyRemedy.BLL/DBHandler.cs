using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EazyRemedy.DAL;
using EazyRemedy.TypeLibrary.Interface;
using EazyRemedy.TypeLibrary.Models;
using EazyRemedy.TypeLibrary.ViewModels;

namespace EazyRemedy.BLL
{
    public class DBHandler
    {
        private readonly IRemedy dbaccess;
        public DBHandler(IRemedy db)
        {
            this.dbaccess = db;
        }

        public bool AddNotes(addNotes notes) => dbaccess.AddNotes(notes);
        public bool checkIn(CheckIn check) => dbaccess.checkIn(check);
        public bool checkout(CheckOut check) => dbaccess.checkout(check);
        public bool AddReport(addReport report) => dbaccess.AddReport(report);
        public GetProfile userProfile(string email) => dbaccess.userProfile(email);
        public List<ViewPerson> viewPerson() => dbaccess.viewPerson();
        public List<GetPatient> getPatient() => dbaccess.getPatient();
        public List<ViewSchedule> viewSchedule(int recipientID) => dbaccess.viewSchedule(recipientID);
        public CareWorker CareWorkerDTL(int userID) => dbaccess.CareWorkerDTL(userID);
        public List<uspBookings> getBookings() => dbaccess.getBookings();
        public GetUserID getUserID(string email) => dbaccess.getUserID(email);
        public List<Booking> viewBookings(int WorkerID) => dbaccess.viewBookings(WorkerID);
        public List<uspCareActivity> GetActivity() => dbaccess.GetActivity();
        public List<ViewCareReports> ViewReports() => dbaccess.ViewReports();
        public List<uspCareReports> getCareReports(int WorkerID) => dbaccess.getCareReports(WorkerID);
        public uspSession GetSession(int SessionID) => dbaccess.GetSession(SessionID);
        public List<uspGetSession> getSessionByID() => dbaccess.getSessionByID();
        public List<uspSessionByID> sessionbyId(int SessionID) => dbaccess.sessionbyId(SessionID);
        public List<uspInvoice> generateInvoice(int ClientID) => dbaccess.generateInvoice(ClientID);
        public uspClientAddress getAddress(int ClientID) => dbaccess.getAddress(ClientID);
        public List<uspGetClient> getClient() => dbaccess.getClient();
    }
}
