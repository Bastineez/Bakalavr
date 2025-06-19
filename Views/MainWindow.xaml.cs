using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Input;
using System.Windows.Media.Animation;
using ToDoListApp.Models;
using ToDoListApp.Utils;

namespace ToDoListApp.Views
{
    public partial class MainWindow : Window
    {
        public TaskManagerViewModel ViewModel { get; set; }
        private int userId;
        private WindowDragHelper dragHelper;

        private string _currentUserName;
        private string _currentPassword;


        public MainWindow(int userId, string currentUserName, string currentPassword)
        {
            InitializeComponent();
            this.userId = userId;

            // Инициализируем _currentUserName и _currentPassword
            _currentUserName = currentUserName;
            _currentPassword = currentPassword;

            ViewModel = new TaskManagerViewModel(userId);
            DataContext = ViewModel;

            dragHelper = new WindowDragHelper(this);

            ViewModel.LoadAllTasks();
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
            this.WindowState = (this.WindowState == WindowState.Normal)
                ? WindowState.Maximized
                : WindowState.Normal;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            ManageCategoryWindow manageCategoryWindow = new ManageCategoryWindow(ViewModel);
            manageCategoryWindow.Show();
        }

        private void ExitButton_Click(object sender, RoutedEventArgs e)
        {
            AuthWindow authWindow = new AuthWindow();
            authWindow.Show();
            this.Close();
        }

        private void OpenAddTaskWindow_Click(object sender, RoutedEventArgs e)
        {
            var addTaskWindow = new AddTaskWindow(ViewModel);
            addTaskWindow.Show();
        }

        private void ToggleButton_Checked(object sender, RoutedEventArgs e)
        {
            if (sender is ToggleButton toggleButton && toggleButton.DataContext is ToDoListApp.Models.Task task)
            {
                ViewModel?.UpdateTaskIsDone(task);
            }
        }

      

        private void OpenLeaderboard_Click(object sender, RoutedEventArgs e)
        {
            var leaderboardWindow = new LeaderboardWindow();
            leaderboardWindow.ShowDialog(); 
        }

        private void ListBox_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            var vm = DataContext as TaskManagerViewModel;
            if (vm?.SelectedTask != null)
            {
                // Открываем окно редактирования задачи и передаем ViewModel и задачу
                var window = new TaskDetailsWindow(vm, vm.SelectedTask);  // Передаем vm для вызова UpdateTask
                if (window.ShowDialog() == true)
                {
                    // После редактирования обновляем задачу в БД
                    vm.UpdateTask(vm.SelectedTask);  // Обновим БД для полной синхронизации
                }
            }
        }
    }
}
