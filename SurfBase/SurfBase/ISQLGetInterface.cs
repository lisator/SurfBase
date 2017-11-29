using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace SurfBase
{
    public interface ISQLGetLInterface
    {
        event EventHandler EmptyTable;

        SqlDataAdapter GetSchools();
        SqlDataAdapter GetLastBoard(int client_id);
        SqlDataAdapter GetLastSail(int client_id);
        SqlDataAdapter GetLastRig(int client_id); // will this be used?
        SqlDataAdapter GetLastLesson(int client_id);
        SqlDataAdapter GetBoards();
        SqlDataAdapter GetSails();
        SqlDataAdapter GetLessons(int day_id); // should look for lessons for every trainer except null trainer (id 1)
        SqlDataAdapter GetLessonsForTrainer(int trainer_id, int day_id); // gives lessons only for a specifi trainer in a current day
        SqlDataAdapter GetHangars();
        int GetIdBoard();
        int GetIdSail();
        int GetIdRig();
        int GetIdClient();
        int GetIdTrainer();
        int GetIdLesson();
        int GetIdEquipment();
        int GetIdSchool();
        int GetIdHangar();
        int GetIdRental();

    }
}