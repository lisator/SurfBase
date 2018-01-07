using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace SurfBase
{
    /// <summary>
    /// Interaction logic for ManagerWindow.xaml
    /// </summary>
    public partial class ManagerWindow : Window
    {
        SurfBaseLogic logic = null;
        public ManagerWindow(SurfBaseLogic logic, string login, string password)
        {
            InitializeComponent();
            this.logic = logic;
            logic.ActiveUser = new Employee(login, password);



        }
    }
}
