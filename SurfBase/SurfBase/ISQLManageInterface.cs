using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SurfBase
{
    public interface ISQLManageInterface
    {
        event EventHandler NoSuchTuple;

        void AddSchool();
        void AddBoard();
        void AddSail();
        void AddTrainer();
        void AddClient();
        void AddEquipment();
        void DeleteBoard();
        void DeleteTrainer();
        void DeleteSail();
        void DeleteClient();
    }
}
