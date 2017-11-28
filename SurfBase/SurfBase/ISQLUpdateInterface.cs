using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SurfBase
{ 
    public interface ISQLUpdateInterface
    {
        event EventHandler NotAvailable;

        void AssignLesson();
        void AssignBoard();
        void AssignSail();
        void AssignRig();
        void CancelLesson();
        void AssignRental();
        void AssignWetsuit();
        void AssignHarness();
        void AssignVest();
    }
}