using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SurfBase
{ 
    public interface ISQLUpdateInterface
    {
        event EventHandler NotAvailable;

        void AssignLesson(int hour_id, int client_id);
        void AssignLastBoard(int board_id, int client_id);
        void AssignLastSail(int sail_id, int client_id);
        void AssignRig(int board_id, int sail_id, int rental_id);
        void CancelLesson(int hour_id);
        void AssignRental(int hour_id, int client_id); // inside will use AssignRig()
        void AssignWetsuit(int rental_id, int equipment_id);
        void AssignHarness(int rental_id, int equipment_id);
        void AssignVest(int rental_id, int equipment_id);
    }
}