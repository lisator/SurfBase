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
        SqlDataAdapter GetLastBoard();
        SqlDataAdapter GetLastSail();
        SqlDataAdapter GetLastRig();
        SqlDataAdapter GetLastLesson();
        SqlDataAdapter GetBoards();
        SqlDataAdapter GetSails();
        SqlDataAdapter GetRigs();
        SqlDataAdapter GetLessons();
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