using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SurfBase
{
    public class Admin : User, IAdminInterface
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