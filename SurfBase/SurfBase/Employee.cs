using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace SurfBase
{
    public class Employee : User, ISQLGetLInterface, ISQLUpdateInterface
    {
        public Employee()
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
        
    }
}