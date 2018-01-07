using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace SurfBase
{
    public abstract class User
    {
        private int current_school;
        private int current_hangar;

        private string login
        {
            get => default(string);
            set
            {
            }
        }
        public void SetLogin(string login)
        {
            this.login = login;
        }

        private string passoword
        {
            get => default(string);
            set
            {
            }
        }
        public void SetPassword(string pass)
        {
            this.passoword = pass;

        }

        /// <value>lisure</value>

        public SqlConnectionStringBuilder connection_string { get; set; }

    }
}