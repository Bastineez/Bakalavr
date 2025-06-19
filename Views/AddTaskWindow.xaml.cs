using System.Windows;
using ToDoListApp.Models;

namespace ToDoListApp.Views
{
    public partial class AddTaskWindow : Window
    {
        private TaskManagerViewModel viewModel;

        public AddTaskWindow(TaskManagerViewModel viewModel)
        {
            InitializeComponent();
            this.viewModel = viewModel;
        }

        private void OnSaveButtonClick(object sender, RoutedEventArgs e)
        {
            // Проверяем, что все поля заполнены
            if (string.IsNullOrWhiteSpace(TaskName.Text) || StartTime.SelectedDate == null || EndTime.SelectedDate == null)
            {
                MessageBox.Show("Пожалуйста, заполните все поля!");
                return;
            }

            // Проверяем, выбрана ли категория
            if (viewModel.SelectedCategory == null)
            {
                MessageBox.Show("Пожалуйста, выберите категорию перед добавлением задачи.");
                return;
            }

            var newTask = new Models.Task
            {
                Title = TaskName.Text,
                Description = TaskDescription.Text,
                StartTime = StartTime.SelectedDate ?? DateTime.Now,
                EndTime = EndTime.SelectedDate ?? DateTime.Now.AddHours(1),
                IsDone = false,
                CategoryId = viewModel.SelectedCategory.Id  // Используем выбранную категорию
            };

            // Добавляем задачу в ViewModel
            viewModel.AddTask(newTask);

            this.Close();  // Закрываем окно
        }

        private void OnBackButtonClick(object sender, RoutedEventArgs e)
        {
            this.Close();  // Закрываем окно
        }
    }
}
