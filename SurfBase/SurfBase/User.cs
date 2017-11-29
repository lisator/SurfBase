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

        public int user_id
        {
            get => default(int);
            set
            {
            }
        }

        private string name
        {
            get => default(string);
            set
            {
            }
        }

        private string passoword
        {
            get => default(string);
            set
            {
            }
        }

        /// <value>lisure</value>
        private string data_source
        {
            get => default(string);
            set
            {
            }
        }

        public SqlConnectionStringBuilder connection_string
        {
            get => default(SqlConnectionStringBuilder);
            set
            {
            }
        }
    }
}