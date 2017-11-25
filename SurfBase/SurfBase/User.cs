using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace SurfBase
{
    public abstract class User
    {
        public int User_id
        {
            get => default(int);
            set
            {
            }
        }

        private string Name
        {
            get => default(string);
            set
            {
            }
        }

        private string Passoword
        {
            get => default(string);
            set
            {
            }
        }

        /// <value>lisure</value>
        private string DataSource
        {
            get => default(string);
            set
            {
            }
        }

        public SqlConnectionStringBuilder ConnectionString
        {
            get => default(SqlConnectionStringBuilder);
            set
            {
            }
        }
    }
}