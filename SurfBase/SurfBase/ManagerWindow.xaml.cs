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
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

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
            this.userBox.Text = login;

            string ConString = logic.ActiveUser.connection_string.ConnectionString;
            string CmdString = string.Empty;
            using (SqlConnection con = new SqlConnection(ConString))
            {
                try
                {
                    //empty connection to verify the login & password
                    CmdString = "SELECT * FROM Hangars";
                    SqlCommand cmd = new SqlCommand(CmdString, con);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable("Days1");
                    sda.Fill(dt);
                }
                catch
                {
                    this.Close();
                    System.Windows.MessageBox.Show("Wrong login/password combination!");
                    Application.Current.Shutdown();
                }
            }
            FillScheduleGrid(logic.ActiveUser);



        }

        private void FillScheduleGrid(User activeUser)
        {

            string ConString = activeUser.connection_string.ConnectionString;
            string CmdString = string.Empty;
            using (SqlConnection con = new SqlConnection(ConString))
            {
                try
                {
                    CmdString = "SELECT dbo.Hours.Client_Id FROM Hours, Days WHERE dbo.Hours.Day_Id=dbo.Days.Id AND dbo.Hours.Day_Id = 7011";
                    SqlCommand cmd = new SqlCommand(CmdString, con);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable("Days1");
                    sda.Fill(dt);
                    Schedule.ItemsSource = dt.DefaultView;
                }
                catch
                {
                }
            }
        }

        private SurfBase.SurfBaseDataSet surfBaseDataSet;
        private SurfBase.SurfBaseDataSetTableAdapters.TrainersTableAdapter surfBaseDataSetTrainersTableAdapter;
        private System.Windows.Data.CollectionViewSource trainersViewSource;
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            SurfBase.SurfBaseDataSet surfBaseDataSet = ((SurfBase.SurfBaseDataSet)(this.FindResource("surfBaseDataSet")));
            // Load data into the table Hours. You can modify this code as needed.
            SurfBase.SurfBaseDataSetTableAdapters.HoursTableAdapter surfBaseDataSetHoursTableAdapter = new SurfBase.SurfBaseDataSetTableAdapters.HoursTableAdapter();
            surfBaseDataSetHoursTableAdapter.Fill(surfBaseDataSet.Hours);
            System.Windows.Data.CollectionViewSource hoursViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("hoursViewSource")));
            hoursViewSource.View.MoveCurrentToFirst();
            // Load data into the table Rentals. You can modify this code as needed.
            SurfBase.SurfBaseDataSetTableAdapters.RentalsTableAdapter surfBaseDataSetRentalsTableAdapter = new SurfBase.SurfBaseDataSetTableAdapters.RentalsTableAdapter();
            surfBaseDataSetRentalsTableAdapter.Fill(surfBaseDataSet.Rentals);
            System.Windows.Data.CollectionViewSource hoursRentalsViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("hoursRentalsViewSource")));
            hoursRentalsViewSource.View.MoveCurrentToFirst();
            // Load data into the table Clients. You can modify this code as needed.
            SurfBase.SurfBaseDataSetTableAdapters.ClientsTableAdapter surfBaseDataSetClientsTableAdapter = new SurfBase.SurfBaseDataSetTableAdapters.ClientsTableAdapter();
            surfBaseDataSetClientsTableAdapter.Fill(surfBaseDataSet.Clients);
            System.Windows.Data.CollectionViewSource clientsViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("clientsViewSource")));
            clientsViewSource.View.MoveCurrentToFirst();
            // Load data into the table Trainers. You can modify this code as needed.
            SurfBase.SurfBaseDataSetTableAdapters.TrainersTableAdapter surfBaseDataSetTrainersTableAdapter = new SurfBase.SurfBaseDataSetTableAdapters.TrainersTableAdapter();
            surfBaseDataSetTrainersTableAdapter.Fill(surfBaseDataSet.Trainers);
            System.Windows.Data.CollectionViewSource trainersViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("trainersViewSource")));
            trainersViewSource.View.MoveCurrentToFirst();
            // Load data into the table Days. You can modify this code as needed.
            SurfBase.SurfBaseDataSetTableAdapters.DaysTableAdapter surfBaseDataSetDaysTableAdapter = new SurfBase.SurfBaseDataSetTableAdapters.DaysTableAdapter();
            surfBaseDataSetDaysTableAdapter.Fill(surfBaseDataSet.Days);
            System.Windows.Data.CollectionViewSource trainersDaysViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("trainersDaysViewSource")));
            trainersDaysViewSource.View.MoveCurrentToFirst();
            // Load data into the table Schools. You can modify this code as needed.
            SurfBase.SurfBaseDataSetTableAdapters.SchoolsTableAdapter surfBaseDataSetSchoolsTableAdapter = new SurfBase.SurfBaseDataSetTableAdapters.SchoolsTableAdapter();
            surfBaseDataSetSchoolsTableAdapter.Fill(surfBaseDataSet.Schools);
            System.Windows.Data.CollectionViewSource schoolsViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("schoolsViewSource")));
            schoolsViewSource.View.MoveCurrentToFirst();
            // Load data into the table Hangars. You can modify this code as needed.
            SurfBase.SurfBaseDataSetTableAdapters.HangarsTableAdapter surfBaseDataSetHangarsTableAdapter = new SurfBase.SurfBaseDataSetTableAdapters.HangarsTableAdapter();
            surfBaseDataSetHangarsTableAdapter.Fill(surfBaseDataSet.Hangars);
            System.Windows.Data.CollectionViewSource hangarsViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("hangarsViewSource")));
            hangarsViewSource.View.MoveCurrentToFirst();
        }

        private void idTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (trainersViewSource != null)
            {
                trainersViewSource.View.MoveCurrentToPosition(2);
                Window_Loaded(this, e);
            }
        }

        private void rentalsDataGrid_SelectionChanged_1(object sender, SelectionChangedEventArgs e)
        {

        }

        private bool idComboBoxFlag = false;
        private void idComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (idComboBoxFlag)
                logic.ActiveUser.current_hangar = Int32.Parse((string)this.idComboBox.Text);
            else idComboBoxFlag = true;
        }
        
    }
}
