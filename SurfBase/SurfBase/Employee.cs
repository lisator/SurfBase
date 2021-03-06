﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace SurfBase
{
    public class Employee : User, ISQLGetLInterface, ISQLUpdateInterface
    {
        public Employee(string login, string password)
        {
            this.connection_string = new SqlConnectionStringBuilder();
            this.connection_string.UserID = login;
            this.connection_string.Password = password;
            this.connection_string.DataSource = "lisure.database.windows.net";
            this.connection_string.InitialCatalog = "SurfBase";

        }

        internal CheckValidity CheckValidity
        {
            get => default(CheckValidity);
            set
            {
            }

        }

        public event EventHandler EmptyTable;
        public event EventHandler NotAvailable;

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

        public SqlDataAdapter GetLastBoard(int client_id)
        {
            throw new NotImplementedException();
        }

        public SqlDataAdapter GetLastLesson(int client_id)
        {
            throw new NotImplementedException();
        }

        public SqlDataAdapter GetLastRig(int client_id)
        {
            throw new NotImplementedException();
        }

        public SqlDataAdapter GetLastSail(int client_id)
        {
            throw new NotImplementedException();
        }

        public SqlDataAdapter GetLessons(int day_id)
        {
            throw new NotImplementedException();
        }

        public SqlDataAdapter GetLessonsForTrainer(int trainer_id, int day_id)
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