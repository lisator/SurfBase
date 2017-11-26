using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SurfBase
{ 
    public interface ISQLUpdateInterface
    {
        void AssignLesson();
        void AssignBoard();
        void AssignSail();
        void AssignRig();
    }
}