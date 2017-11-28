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

        void AddSchool(string name);
        void AddBoard(int length, int volume, string make, string type, int hangar_id);
        void AddSail(double size, string make, int hangar_id);
        void AddTrainer(string nickname, int school_id, string name = null, string last_name = null);
        void AddClient(string name, string last_name, int age);
        void AddVest(string size, int buoyancy, int hangar_id);
        void AddHarness(string size, string type, int hangar_id);
        void AddWetsuit(string size, string type, int hangar_id);
        void DeleteBoard(int board_id);
        void DeleteTrainer(int trainer_id);
        void DeleteSail(int sail_id);
        void DeleteClient(int client_id);
    }
}
