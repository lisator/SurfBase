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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace SurfBase
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        SurfBaseLogic logic = null;
        public MainWindow()
        {
            InitializeComponent();
            logic = new SurfBaseLogic();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var login = this.loginBox.Text;
            var password = this.passwordBox.Password;

            ManagerWindow main = new ManagerWindow(logic, login, password);
            if (main.IsActive)
            {
                main.Show();
            }

            this.Close();
        }
    }
}
