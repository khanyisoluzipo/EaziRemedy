using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EazyRemedy.TypeLibrary.Models;
using EazyRemedy.TypeLibrary.ViewModels;

namespace EazyRemedy.TypeLibrary.Interface
{
    public interface IRemedy
    {
        bool AddNotes(addNotes notes);
        bool checkIn(CheckIn check);
        bool checkout(CheckOut check);
        bool AddReport(addReport report);
        GetProfile userProfile(string email);
        List<ViewPerson> viewPerson();
        List<GetPatient> getPatient();
        List<ViewSchedule> viewSchedule(int recipientID);
        CareWorker CareWorkerDTL(int usrID);
        List<uspBookings> getBookings();
        GetUserID getUserID(string email);
        List<Booking> viewBookings(int WorkerID);
        List<uspCareActivity> GetActivity();
        List<ViewCareReports> ViewReports();
        List<uspCareReports> getCareReports(int WorkerID);
        uspSession GetSession(int SessionID);
        List<uspGetSession> getSessionByID();
        List<uspSessionByID> sessionbyId(int SessionID);
        List<uspInvoice> generateInvoice(int ClientID);
        uspClientAddress getAddress(int ClientID);
        List<uspGetClient> getClient();
       
    }
}
