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
using ToDoListApp.Models;
using ToDoListApp.Utils;


namespace ToDoListApp.Views
{
    public partial class TaskDetailsWindow : Window
    {
        private WindowDragHelper dragHelper;

        private TaskManagerViewModel viewModel;

        public TaskDetailsWindow(TaskManagerViewModel vm, ToDoListApp.Models.Task task)
        {
            InitializeComponent();
            DataContext = task;
            viewModel = vm;
            dragHelper = new WindowDragHelper(this);
        }


        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            if (DataContext is ToDoListApp.Models.Task task)
            {
                viewModel.UpdateTask(task);
            }
            DialogResult = true;
            Close();
        }


        private void CloseWindowButton_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
