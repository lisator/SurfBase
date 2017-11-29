using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace SurfBase
{
    public class Admin : User, ISQLGetLInterface, ISQLManageInterface, ISQLUpdateInterface
    {
        public Admin()
        {
            throw new System.NotImplementedException();
        }

        internal CheckValidity CheckValidity
        {
            get => default(CheckValidity);
            set
            {
            }
        }

        public event EventHandler EmptyTable;
        public event EventHandler NoSuchTuple;
        public event EventHandler NotAvailable;

        public void AddBoard(int length, int volume, string make, string type, int hangar_id)
        {
            throw new NotImplementedException();
        }

        public void AddClient(string name, string last_name, int age)
        {
            throw new NotImplementedException();
        }

        public void AddHarness(string size, string type, int hangar_id)
        {
            throw new NotImplementedException();
        }

        public void AddSail(double size, string make, int hangar_id)
        {
            throw new NotImplementedException();
        }

        public void AddSchool(string name)
        {
            throw new NotImplementedException();
        }

        public void AddTrainer(string nickname, int school_id, string name = null, string last_name = null)
        {
            throw new NotImplementedException();
        }

        public void AddVest(string size, int buoyancy, int hangar_id)
        {
            throw new NotImplementedException();
        }

        public void AddWetsuit(string size, string type, int hangar_id)
        {
            throw new NotImplementedException();
        }

        public void AssignHarness(int rental_id, int equipment_id)
        {
            throw new NotImplementedException();
        }

        public void AssignLastBoard(int board_id, int client_id)
        {
            throw new NotImplementedException();
        }

        public void AssignLastSail(int sail_id, int client_id)
        {
            throw new NotImplementedException();
        }

        public void AssignLesson(int hour_id, int client_id)
        {
            throw new NotImplementedException();
        }

        public void AssignRental(int hour_id, int client_id)
        {
            throw new NotImplementedException();
        }

        public void AssignRig(int board_id, int sail_id, int rental_id)
        {
            throw new NotImplementedException();
        }

        public void AssignVest(int rental_id, int equipment_id)
        {
            throw new NotImplementedException();
        }

        public void AssignWetsuit(int rental_id, int equipment_id)
        {
            throw new NotImplementedException();
        }

        public void CancelLesson(int hour_id)
        {
            throw new NotImplementedException();
        }

        public void DeleteBoard(int board_id)
        {
            throw new NotImplementedException();
        }

        public void DeleteClient(int client_id)
        {
            throw new NotImplementedException();
        }

        public void DeleteSail(int sail_id)
        {
            throw new NotImplementedException();
        }

        public void DeleteTrainer(int trainer_id)
        {
            throw new NotImplementedException();
        }

        public SqlDataAdapter GetBoards()
        {
            throw new NotImplementedException();
        }

        public SqlDataAdapter GetHangars()
        {
            throw new NotImplementedException();
        }

        public int GetIdBoard()
        {
            throw new NotImplementedException();
        }

        public int GetIdClient()
        {
            throw new NotImplementedException();
        }

        public int GetIdEquipment()
        {
            throw new NotImplementedException();
        }

        public int GetIdHangar()
        {
            throw new NotImplementedException();
        }

        public int GetIdLesson()
        {
            throw new NotImplementedException();
        }

        public int GetIdRental()
        {
            throw new NotImplementedException();
        }

        public int GetIdRig()
        {
            throw new NotImplementedException();
        }

        public int GetIdSail()
        {
            throw new NotImplementedException();
        }

        public int GetIdSchool()
        {
            throw new NotImplementedException();
        }

        public int GetIdTrainer()
        {
            throw new NotImplementedException();
        }

        public SqlDataAdapter GetLastBoard()
        {
            throw new NotImplementedException();
        }

        public SqlDataAdapter GetLastLesson()
        {
            throw new NotImplementedException();
        }

        public SqlDataAdapter GetLastRig()
        {
            throw new NotImplementedException();
        }

        public SqlDataAdapter GetLastSail()
        {
            throw new NotImplementedException();
        }

        public SqlDataAdapter GetLessons()
        {
            throw new NotImplementedException();
        }

        public SqlDataAdapter GetRigs()
        {
            throw new NotImplementedException();
        }

        public SqlDataAdapter GetSails()
        {
            throw new NotImplementedException();
        }

        public SqlDataAdapter GetSchools()
        {
            throw new NotImplementedException();
        }
    }
}