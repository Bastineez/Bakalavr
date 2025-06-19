using System.Windows;
using ToDoListApp.Models;
using ToDoListApp.Utils;

namespace ToDoListApp.Views
{
    public partial class ManageCategoryWindow : Window
    {
        public TaskManagerViewModel ViewModel { get; set; }
        private WindowDragHelper dragHelper;

        public ManageCategoryWindow(TaskManagerViewModel viewModel)
        {
            InitializeComponent();
            this.ViewModel = viewModel;
            DataContext = ViewModel;

            dragHelper = new WindowDragHelper(this);
        }

        private void CloseWindowButton_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
