using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace SurfBase
{
    public class Employee : User, ISQLInterface
    {
        internal CheckValidity CheckValidity
        {
            get => default(CheckValidity);
            set
            {
            }

        }
        
    }
}