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
using ToDoListApp.Utils;
using ToDoListApp.Views;

namespace ToDoListApp.Views
{
    public partial class LeaderboardWindow : Window
    {
        private WindowDragHelper dragHelper;

        public LeaderboardViewModel ViewModel { get; set; }

        public LeaderboardWindow()
        {
            InitializeComponent();
            ViewModel = new LeaderboardViewModel();
            DataContext = ViewModel;
            dragHelper = new WindowDragHelper(this);
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btnMinimize_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void btnMaximize_Click(object sender, RoutedEventArgs e)
        {
            if (this.WindowState == WindowState.Normal)
                this.WindowState = WindowState.Maximized;
            else
                this.WindowState = WindowState.Normal;
        }
    }
}


