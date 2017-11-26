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
        SqlDataAdapter GetSchools();
        void GetLastBoard();
        void GetLastSail();
        void GetLastRig();
        void GetLastLesson();
        void GetBoards();
        void GetSails();
        void GetRigs();
        void GetLessons();
    }
}