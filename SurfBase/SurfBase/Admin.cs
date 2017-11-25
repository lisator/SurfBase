using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

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



    }
}