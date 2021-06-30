using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;
using EazyRemedy.TypeLibrary.Interface;
using EazyRemedy.TypeLibrary.Models;
using EazyRemedy.TypeLibrary.ViewModels;

namespace EazyRemedy.DAL
{
    public class DBAccess : IRemedy
    {
        public bool AddNotes(addNotes notes)
        {
            List<SqlParameter> param = new List<SqlParameter>();

            foreach(var prop in notes.GetType().GetProperties())
            {
                if(prop.GetValue(notes) != null)
                {
                    param.Add(new SqlParameter("@" + prop.Name.ToString(),
                        prop.GetValue(notes)));
                }
            }
            return SqlDBHelper.NonQuery("addNotes", CommandType.StoredProcedure, param.ToArray());
        }
        public bool checkIn(CheckIn check)
        {
            List<SqlParameter> param = new List<SqlParameter>();

            foreach(var prop in check.GetType().GetProperties())
            {
                if(prop.GetValue(check) != null)
                {
                    param.Add(new SqlParameter("@" + prop.Name.ToString(),
                        prop.GetValue(check)));
                }
            }
            return SqlDBHelper.NonQuery("CheckIn", CommandType.StoredProcedure, param.ToArray());
        }
     
        public bool checkout(CheckOut check)
        {
            List<SqlParameter> param = new List<SqlParameter>();

            foreach(var prop in check.GetType().GetProperties())
            {
                if(prop.GetValue(check) != null)
                {
                    param.Add(new SqlParameter("@" + prop.Name.ToString(),
                        prop.GetValue(check)));
                }
            }
            return SqlDBHelper.NonQuery("CheckOut", CommandType.StoredProcedure, param.ToArray());
        }
        public bool AddReport(addReport report)
        {
            List<SqlParameter> param = new List<SqlParameter>();

            foreach (var prop in report.GetType().GetProperties())
            {
                if (prop.GetValue(report) != null)
                {
                    param.Add(new SqlParameter("@" + prop.Name.ToString(),
                        prop.GetValue(report)));
                }
            }
            return SqlDBHelper.NonQuery("addReport", CommandType.StoredProcedure, param.ToArray());
        }
        public GetProfile userProfile(string email)
        {
            GetProfile prof = null;
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Email", email)
            };

            using(DataTable table = SqlDBHelper.ParamSelect("uspProfile", CommandType.StoredProcedure, param))
            {
                if(table.Rows.Count >= 0)
                {
                    DataRow row = table.Rows[0];
                    prof = new GetProfile
                    {
                        UserID = Convert.ToInt32(row["UserID"]),
                        Name = Convert.ToString(row["Name"]),
                        Surname = Convert.ToString(row["Surname"]),
                        ContactNumber = Convert.ToString(row["ContactNumber"]),
                        Email = Convert.ToString(row["Email"])
                    };
                }
            }

            return prof;
        }
     
        public List<ViewSchedule> viewSchedule(int recipientID)
        {
            List<ViewSchedule> schedue = new List<ViewSchedule>();
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@RecipientID", recipientID)
            };

            using(DataTable table = SqlDBHelper.ParamSelect("uspViewSchedule", CommandType.StoredProcedure, param))
            {
                try
                {
                    if(table.Rows.Count >= 0)
                    {
                        DataRow row = table.Rows[0];
                        ViewSchedule view = new ViewSchedule
                        {
                            Date = Convert.ToDateTime(row["Date"]),
                            Time = Convert.ToString(row["Time"]),
                            FullName = Convert.ToString(row["FullName"]),
                            Type = Convert.ToString(row["Type"]),
                            Name = Convert.ToString(row["Name"])
                        };
                    }
                }
                catch (IndexOutOfRangeException)
                {

                }
            }
            return schedue;
        }
        public CareWorker CareWorkerDTL(int userID)
        {
            CareWorker worker = new CareWorker();
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@UserID", userID)
            };

            using(DataTable table = SqlDBHelper.ParamSelect("CareWorkerDTL", CommandType.StoredProcedure, param))
            {
                try
                {
                    if (table.Rows.Count >= 0)
                    {
                        DataRow row = table.Rows[0];
                        CareWorker _worker = new CareWorker
                        {
                            UserID = Convert.ToInt32(row["UserID"]),
                            WorkerID = Convert.ToInt32(row["WorkerID"]),
                            Name = Convert.ToString(row["Name"]),
                            Surname = Convert.ToString(row["Surname"]),
                            DateOfBirth = Convert.ToDateTime(row["DateOfBirth"])
                        };
                    }
                }
                catch (IndexOutOfRangeException)
                {

                }
               
            }
            return worker;
        }
        public GetUserID getUserID(string email)
        {
            GetUserID user = null;
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@Email", email)
            };
            using(DataTable table = SqlDBHelper.ParamSelect("GetUserID", CommandType.StoredProcedure, param))
            {
                try
                {
                    if (table.Rows.Count >= 0)
                    {
                        DataRow row = table.Rows[0];
                        user = new GetUserID()
                        {
                            UserID = Convert.ToInt32(row["UserID"]),
                            WorkerID = Convert.ToInt32(row["WorkerID"])
                        };
                    }
                }
                catch (IndexOutOfRangeException)
                {

                }
              
            }
            return user;

        }
        public uspSession GetSession(int SessionID)
        {
            uspSession session = null;
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@SessionID", SessionID)
            };
            using(DataTable table = SqlDBHelper.ParamSelect("uspSession", CommandType.StoredProcedure, param))
            {
                try
                {
                    if(table.Rows.Count >= 0)
                    {
                        DataRow row = table.Rows[0];
                        session = new uspSession
                        {
                            SessionID = Convert.ToInt32(row["SessionID"]),
                            FullName = Convert.ToString(row["FullName"]),
                            Name = Convert.ToString(row["Name"])
                        };

                    }
                }
                catch (IndexOutOfRangeException)
                {

                }
            }
            return session;
        }
        public List<uspCareActivity> GetActivity()
        {
            List<uspCareActivity> activity = new List<uspCareActivity>();

            using(DataTable table = SqlDBHelper.Select("uspGetActivity", CommandType.StoredProcedure))
            {
                if(table.Rows.Count >= 0)
                {
                    foreach(DataRow row in table.Rows)
                    {
                        uspCareActivity care = new uspCareActivity
                        {
                            ActivityID = Convert.ToInt32(row["activityID"]),
                            Type = Convert.ToString(row["Type"])
                        };
                        activity.Add(care);
                    }
                    
                }
            }
            return activity;
        }
        public List<ViewPerson> viewPerson()
        {
            List<ViewPerson> view = new List<ViewPerson>();
            using(DataTable table  = SqlDBHelper.Select("uspViewPerson", CommandType.StoredProcedure))
            {
                if(table.Rows.Count > 0)
                {
                    foreach(DataRow row in table.Rows)
                    {
                        ViewPerson person = new ViewPerson
                        {
                            UserID = Convert.ToInt32(row["UserID"]),
                            Username = Convert.ToString(row["Username"]),
                            Email = Convert.ToString(row["Email"]),
                            Password = Convert.ToString(row["Password"]),
                            userType = Convert.ToString(row["UserType"])
                        };
                        view.Add(person);
                    }
                }
            }

            return view;
        }
        public List<GetPatient> getPatient()
        {
            List<GetPatient> patient = new List<GetPatient>();
            using(DataTable table = SqlDBHelper.Select("uspGetPatient", CommandType.StoredProcedure))
            {
                if(table.Rows.Count > 0)
                {
                    foreach(DataRow row in table.Rows)
                    {
                        GetPatient p = new GetPatient
                        {
                            RecipientID = Convert.ToInt32(row["RecipientID"]),
                            FullName = Convert.ToString(row["FullName"])
                        };
                        patient.Add(p);
                    }
                }
            }

            return patient;
        }
        public List<uspBookings> getBookings()
        {
            List<uspBookings> bookings = new List<uspBookings>();
            using(DataTable table = SqlDBHelper.Select("Bookings", CommandType.StoredProcedure))
            {
                try
                {
                    if(table.Rows.Count > 0)
                    {
                        foreach(DataRow row in table.Rows)
                        {
                            uspBookings _list = new uspBookings()
                            {
                                Duration = Convert.ToString(row["Duration"]),
                                Date = Convert.ToDateTime(row["Date"]),
                                Time = Convert.ToString(row["Time"]),
                                FullName = Convert.ToString(row["FullName"]),
                                Description = Convert.ToString(row["Description"]),
                                Name = Convert.ToString(row["Name"])
                            };
                            bookings.Add(_list);
                        }
                    }
                }
                catch (IndexOutOfRangeException)
                {

                }
            }
            return bookings;
        }
        public List<uspGetSession> getSessionByID()
        {
            List<uspGetSession> session = new List<uspGetSession>();

            using(DataTable table = SqlDBHelper.Select("uspGetSession", CommandType.StoredProcedure))
            {
                try
                {
                    if(table.Rows.Count > 0)
                    {
                        foreach(DataRow row in table.Rows)
                        {
                            uspGetSession list = new uspGetSession
                            {
                                SessionID = Convert.ToInt32(row["SessionID"])
                            };
                            session.Add(list);
                        }
                    }
                }
                catch (IndexOutOfRangeException)
                {

                }
            }
            return session;
        }
        public List<Booking> viewBookings(int WorkerID)
        {
            List<Booking> list = new List<Booking>();
            SqlParameter[] parameter = new SqlParameter[]
            {
                new SqlParameter("@WorkerID", WorkerID)
            };
            using(DataTable table = SqlDBHelper.ParamSelect("GetBookings", CommandType.StoredProcedure, parameter))
            {
                try
                {
                    if (table.Rows.Count > 0)
                    {
                        foreach(DataRow row in table.Rows)
                        {
                            Booking bookings = new Booking
                            {
                                Duration = Convert.ToString(row["Duration"]),
                                Date = Convert.ToDateTime(row["Date"]),
                                Time = Convert.ToString(row["Time"]),
                                FullName = Convert.ToString(row["FullName"]),
                                Type = Convert.ToString(row["Type"]),
                                Description = Convert.ToString(row["Description"]),
                                Name = Convert.ToString(row["Name"])
                            };
                            list.Add(bookings);
                        }
                       
                    }
                }
                catch (IndexOutOfRangeException)
                {

                }
                
            }
            return list;
        }
        public List<ViewCareReports> ViewReports()
        {
            List<ViewCareReports> reports = new List<ViewCareReports>();
            using(DataTable table = SqlDBHelper.Select("uspViewCareReports", CommandType.StoredProcedure))
            {
                try
                {
                    if(table.Rows.Count > 0)
                    {
                        foreach(DataRow row in table.Rows)
                        {
                            ViewCareReports list = new ViewCareReports
                            {
                                SessionID = Convert.ToInt32(row["SessionID"]),
                                WorkerID = Convert.ToInt32(row["WorkerID"]),
                                CareRecipient = Convert.ToString(row["CareRecipient"]),
                                Date = Convert.ToDateTime(row["Date"]),
                                Type = Convert.ToString(row["Type"]),
                                hoursWorked = Convert.ToString(row["hoursWorked"]),
                                Notes = Convert.ToString(row["Notes"])
                            };
                            reports.Add(list);
                        }
                    }
                }
                catch (IndexOutOfRangeException)
                {

                }
            }
            return reports;
        }
        public List<uspCareReports> getCareReports(int WorkerID)
        {
            List<uspCareReports> list = new List<uspCareReports>();
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@WorkerID", WorkerID)
            };

            using(DataTable table = SqlDBHelper.ParamSelect("uspReports", CommandType.StoredProcedure, param))
            {
                try
                {
                    if (table.Rows.Count > 0)
                    {
                        foreach (DataRow row in table.Rows)
                        {
                            uspCareReports reports = new uspCareReports
                            {
                                SessionID = Convert.ToInt32(row["SessionID"]),
                                FullName = Convert.ToString(row["FullName"]),
                                Date = Convert.ToDateTime(row["Date"]),
                                Type = Convert.ToString(row["Type"]),
                                hoursWorkerd = Convert.ToString(row["hoursWorked"]),
                                Notes = Convert.ToString(row["Notes"])
                            };
                            list.Add(reports);
                        }
                    }
                }
                catch (IndexOutOfRangeException)
                {

                }
               
            }
            return list;
        }
        public List<uspSessionByID> sessionbyId(int SessionID)
        {
            List<uspSessionByID> list = new List<uspSessionByID>();
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@SessionID", SessionID)
            };

            using(DataTable table = SqlDBHelper.ParamSelect("uspSessionByID", CommandType.StoredProcedure, param))
            {
                try
                {
                    if(table.Rows.Count > 0)
                    {
                        foreach(DataRow row in table.Rows)
                        {
                            uspSessionByID session = new uspSessionByID
                            {
                                CareRecipient = Convert.ToString(row["CareRecipient"]),
                                Date = Convert.ToDateTime(row["Date"]),
                                hoursWorked = Convert.ToString(row["hoursWorked"]),
                                Type = Convert.ToString(row["Type"])
                            };
                            list.Add(session);
                        }
                    }
                }
                catch (IndexOutOfRangeException)
                {

                }
            }
            return list;
        }
        public List<uspInvoice> generateInvoice(int ClientID)
        {
            List<uspInvoice> list = new List<uspInvoice>();
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@ClientID", ClientID)
            };

            using (DataTable table = SqlDBHelper.ParamSelect("uspInvoice", CommandType.StoredProcedure, param))
            {
                try
                {
                    if (table.Rows.Count > 0)
                    {
                        foreach (DataRow row in table.Rows)
                        {
                            uspInvoice invoice = new uspInvoice
                            {
                                SessionID = Convert.ToInt32(row["SessionID"]),
                                ClientName = Convert.ToString(row["ClientName"]),
                                CareRecipient = Convert.ToString(row["CareRecipient"]),
                                Date = Convert.ToDateTime(row["Date"]),
                                hoursWorked = Convert.ToString(row["hoursWorked"]),
                                Type = Convert.ToString(row["Type"])
                            };
                            list.Add(invoice);
                        }
                    }
                }
                catch (IndexOutOfRangeException)
                {

                }
            }
            return list;
        }
        public uspClientAddress getAddress(int ClientID)
        {
            uspClientAddress list = null;
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@ClientID", ClientID)
            };

            using (DataTable table = SqlDBHelper.ParamSelect("ClientAddress", CommandType.StoredProcedure, param))
            {
                try
                {
                    if (table.Rows.Count >= 0)
                    {
                        DataRow row = table.Rows[0];
                          list = new uspClientAddress
                            {
                               FullName = Convert.ToString(row["FullName"]),
                               residentialAddress = Convert.ToString(row["residentialAddress"])
                            };
                            
                    }
                }
                catch (IndexOutOfRangeException)
                {

                }
            }
            return list;
        }
        public List<uspGetClient> getClient()
        {
            List<uspGetClient> list = new List<uspGetClient>();

            using (DataTable table = SqlDBHelper.Select("uspGetClient", CommandType.StoredProcedure))
            {
                try
                {
                    if (table.Rows.Count > 0)
                    {
                        foreach (DataRow row in table.Rows)
                        {
                           uspGetClient client = new uspGetClient
                            {
                               ClientID = Convert.ToInt32(row["ClientID"]),
                               FullName = Convert.ToString(row["FullName"])
                            };
                            list.Add(client);
                        }
                    }
                }
                catch (IndexOutOfRangeException)
                {

                }
            }
            return list;
        }
    }
}
