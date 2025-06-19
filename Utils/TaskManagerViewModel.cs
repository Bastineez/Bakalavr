using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Input;
using ToDoListApp.DataBase;
using MySql.Data.MySqlClient;
using ToDoListApp.Utils;
using System.Globalization;
using System.Windows.Media.Animation;

namespace ToDoListApp.Models
{
    public class TaskManagerViewModel : INotifyPropertyChanged
    {
        private readonly DB db = new DB();
        public int UserId { get; set; }

        public ObservableCollection<Category> Categories { get; set; } = new ObservableCollection<Category>();
        public ObservableCollection<Task> Tasks { get; set; } = new ObservableCollection<Task>();

        private Category? selectedCategory;
        public Category? SelectedCategory
        {
            get => selectedCategory;
            set
            {
                if (selectedCategory != value)
                {
                    selectedCategory = value;
                    OnPropertyChanged();
                    LoadTasks();
                }
            }
        }

        private Task? selectedTask;
        public Task? SelectedTask
        {
            get => selectedTask;
            set
            {
                if (selectedTask != value)
                {
                    selectedTask = value;
                    OnPropertyChanged();
                }
            }
        }


        private User user;
        public User User
        {
            get => user;
            set
            {
                if (user != value)
                {
                    user = value;
                    OnPropertyChanged();
                }
            }
        }


        public string NewCategoryName { get; set; } = "";
        public string NewTaskTitle { get; set; } = "";
        public string NewTaskDescription { get; set; } = "";
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }

        public ICommand AddCategoryCommand { get; set; }
        public ICommand DeleteCategoryCommand { get; set; }
        public ICommand AddTaskCommand { get; set; }
        public ICommand DeleteTaskCommand { get; set; }
        public ICommand ShowAllTasksCommand { get; set; }


        public int TotalTasksCount => Tasks.Count;
        public int CompletedTasksCount => Tasks.Count(t => t.IsDone);

        public TaskManagerViewModel(int userId)
        {
            UserId = userId;
            AddCategoryCommand = new RelayCommand(_ => AddCategory());
            DeleteCategoryCommand = new RelayCommand(_ => DeleteCategory());
            ShowAllTasksCommand = new RelayCommand(_ => LoadAllTasks());
            AddTaskCommand = new RelayCommand(_ => AddTask(new Task

            {
                Title = NewTaskTitle,
                Description = NewTaskDescription,
                StartTime = StartTime,
                EndTime = EndTime,
                IsDone = false,
                CategoryId = SelectedCategory?.Id ?? 0
            }));
            DeleteTaskCommand = new RelayCommand(_ => DeleteTask(SelectedTask));

            Tasks.CollectionChanged += Tasks_CollectionChanged;

            LoadCategories();
        }

        private void Tasks_CollectionChanged(object? sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (Task task in e.NewItems)
                    task.PropertyChanged += Task_PropertyChanged;
            }

            if (e.OldItems != null)
            {
                foreach (Task task in e.OldItems)
                    task.PropertyChanged -= Task_PropertyChanged;
            }

            OnPropertyChanged(nameof(TotalTasksCount));
            OnPropertyChanged(nameof(CompletedTasksCount));
            OnPropertyChanged(nameof(TaskCompletionPercentage));
        }

        private void Task_PropertyChanged(object? sender, PropertyChangedEventArgs e)
        {
            if (e.PropertyName == nameof(Task.IsDone))
            {
                OnPropertyChanged(nameof(CompletedTasksCount));
                OnPropertyChanged(nameof(TaskCompletionPercentage));
            }
        }

        public void LoadAllTasks()
        {
            if (UserId == 0) return;

            SelectedCategory = null; // сброс выделенной категории
            Tasks.Clear();
            try
            {
                db.openConnection();
                var cmd = new MySqlCommand("SELECT * FROM tasks WHERE user_id = @userId", db.getConnection());
                cmd.Parameters.AddWithValue("@userId", UserId);
                var reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    var task = new Task
                    {
                        Id = reader.GetInt32("id"),
                        Title = reader.GetString("title"),
                        Description = reader.GetString("description"),
                        CategoryId = reader.GetInt32("category_id"),
                        IsDone = reader.GetBoolean("is_done"),
                        StartTime = reader.GetDateTime("start_time"),
                        EndTime = reader.GetDateTime("end_time")
                    };
                    task.PropertyChanged += Task_PropertyChanged;
                    Tasks.Add(task);
                }
                reader.Close();
            }
            catch (MySqlException ex)
            {
                Console.WriteLine($"Ошибка при загрузке всех задач: {ex.Message}");
            }
            finally
            {
                db.closeConnection();
            }

            // Пересчитываем количество задач и выполненных задач
            OnPropertyChanged(nameof(TotalTasksCount));
            OnPropertyChanged(nameof(CompletedTasksCount));
            OnPropertyChanged(nameof(TaskCompletionPercentage));

        }



        public void AddCategory()
        {
            if (string.IsNullOrWhiteSpace(NewCategoryName) || UserId == 0) return;

            try
            {
                db.openConnection();
                var cmd = new MySqlCommand("INSERT INTO categories (name, user_id) VALUES (@name, @userId)", db.getConnection());
                cmd.Parameters.AddWithValue("@name", NewCategoryName);
                cmd.Parameters.AddWithValue("@userId", UserId);
                cmd.ExecuteNonQuery();
            }
            catch (MySqlException ex)
            {
                Console.WriteLine($"Ошибка при добавлении категории: {ex.Message}");
            }
            finally
            {
                db.closeConnection();
            }

            LoadCategories();
            NewCategoryName = "";
            OnPropertyChanged(nameof(NewCategoryName));
        }

        public void DeleteCategory()
        {
            if (SelectedCategory == null || UserId == 0) return;

            try
            {
                db.openConnection();
                var cmd = new MySqlCommand("DELETE FROM categories WHERE id = @id AND user_id = @userId", db.getConnection());
                cmd.Parameters.AddWithValue("@id", SelectedCategory.Id);
                cmd.Parameters.AddWithValue("@userId", UserId);
                cmd.ExecuteNonQuery();
            }
            catch (MySqlException ex)
            {
                Console.WriteLine($"Ошибка при удалении категории: {ex.Message}");
            }
            finally
            {
                db.closeConnection();
            }

            LoadCategories();
            Tasks.Clear();
        }  
        

        public void AddTask(Task task)
        {
            if (string.IsNullOrWhiteSpace(task.Title) || UserId == 0) return;

            // Если нет выбранной категории — нельзя добавить
            if (SelectedCategory == null && task.CategoryId == 0)
            {
                Console.WriteLine("Нельзя добавить задачу без категории.");
                return;
            }

            try
            {
                db.openConnection();
                var cmd = new MySqlCommand("INSERT INTO tasks (title, description, is_done, category_id, user_id, start_time, end_time) " +
                                           "VALUES (@title, @description, @isDone, @categoryId, @userId, @startTime, @endTime)", db.getConnection());
                cmd.Parameters.AddWithValue("@title", task.Title);
                cmd.Parameters.AddWithValue("@description", task.Description);
                cmd.Parameters.AddWithValue("@isDone", task.IsDone);
                cmd.Parameters.AddWithValue("@categoryId", task.CategoryId);
                cmd.Parameters.AddWithValue("@userId", UserId);
                cmd.Parameters.AddWithValue("@startTime", task.StartTime);
                cmd.Parameters.AddWithValue("@endTime", task.EndTime);
                cmd.ExecuteNonQuery();
            }
            catch (MySqlException ex)
            {
                Console.WriteLine($"Ошибка при добавлении задачи: {ex.Message}");
            }
            finally
            {
                db.closeConnection();
            }

            // аналогично — обновляем соответствующий список
            if (SelectedCategory == null)
                LoadAllTasks();
            else
                LoadTasks();
        }


        public void DeleteTask(Task task)
        {
            if (task == null || UserId == 0) return;

            try
            {
                db.openConnection();
                var cmd = new MySqlCommand("DELETE FROM tasks WHERE id = @id AND user_id = @userId", db.getConnection());
                cmd.Parameters.AddWithValue("@id", task.Id);
                cmd.Parameters.AddWithValue("@userId", UserId);
                cmd.ExecuteNonQuery();
            }
            catch (MySqlException ex)
            {
                Console.WriteLine($"Ошибка при удалении задачи: {ex.Message}");
            }
            finally
            {
                db.closeConnection();
            }

            // здесь проверяем, что отображается сейчас
            if (SelectedCategory == null)
                LoadAllTasks();
            else
                LoadTasks();
        }


        public void LoadCategories()
        {
            if (UserId == 0) return;

            Categories.Clear();
            try
            {
                db.openConnection();
                var cmd = new MySqlCommand("SELECT * FROM categories WHERE user_id = @userId", db.getConnection());
                cmd.Parameters.AddWithValue("@userId", UserId);
                var reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Categories.Add(new Category
                    {
                        Id = reader.GetInt32("id"),
                        UserId = reader.GetInt32("user_id"),
                        Name = reader.GetString("name")
                    });
                }
                reader.Close();
            }
            catch (MySqlException ex)
            {
                Console.WriteLine($"Ошибка при загрузке категорий: {ex.Message}");
            }
            finally
            {
                db.closeConnection();
            }
        }

        public void LoadTasks()
        {
            if (SelectedCategory == null || UserId == 0) return;

            Tasks.Clear();
            try
            {
                db.openConnection();
                var cmd = new MySqlCommand("SELECT * FROM tasks WHERE category_id = @categoryId AND user_id = @userId", db.getConnection());
                cmd.Parameters.AddWithValue("@categoryId", SelectedCategory.Id);
                cmd.Parameters.AddWithValue("@userId", UserId);
                var reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    var task = new Task
                    {
                        Id = reader.GetInt32("id"),
                        Title = reader.GetString("title"),
                        Description = reader.GetString("description"),
                        CategoryId = reader.GetInt32("category_id"),
                        IsDone = reader.GetBoolean("is_done"),
                        StartTime = reader.GetDateTime("start_time"),
                        EndTime = reader.GetDateTime("end_time")
                    };
                    task.PropertyChanged += Task_PropertyChanged;
                    Tasks.Add(task);
                }
                reader.Close();
            }
            catch (MySqlException ex)
            {
                Console.WriteLine($"Ошибка при загрузке задач: {ex.Message}");
            }
            finally
            {
                db.closeConnection();
            }

            // Обновляем счетчики задач
            OnPropertyChanged(nameof(TotalTasksCount));
            OnPropertyChanged(nameof(CompletedTasksCount));
            OnPropertyChanged(nameof(TaskCompletionPercentage));
        }

        public void UpdateTask(Task task)
        {
            if (task == null || UserId == 0) return;

            try
            {
                db.openConnection();
                var cmd = new MySqlCommand("UPDATE tasks SET title = @title, description = @description, is_done = @isDone, category_id = @categoryId, start_time = @startTime, end_time = @endTime WHERE id = @id AND user_id = @userId", db.getConnection());
                cmd.Parameters.AddWithValue("@title", task.Title);
                cmd.Parameters.AddWithValue("@description", task.Description);
                cmd.Parameters.AddWithValue("@isDone", task.IsDone);
                cmd.Parameters.AddWithValue("@categoryId", task.CategoryId);
                cmd.Parameters.AddWithValue("@startTime", task.StartTime);
                cmd.Parameters.AddWithValue("@endTime", task.EndTime);
                cmd.Parameters.AddWithValue("@id", task.Id);
                cmd.Parameters.AddWithValue("@userId", UserId);
                cmd.ExecuteNonQuery();
            }
            catch (MySqlException ex)
            {
                Console.WriteLine($"Ошибка при обновлении задачи: {ex.Message}");
            }
            finally
            {
                db.closeConnection();
            }

            // После обновления можно обновить статистику
            OnPropertyChanged(nameof(TotalTasksCount));
            OnPropertyChanged(nameof(CompletedTasksCount));
            OnPropertyChanged(nameof(TaskCompletionPercentage));
        }



        public void UpdateTaskIsDone(Task task)
        {
            if (task == null || UserId == 0) return;

            try
            {
                db.openConnection();
                var cmd = new MySqlCommand("UPDATE tasks SET is_done = @isDone WHERE id = @id AND user_id = @userId", db.getConnection());
                cmd.Parameters.AddWithValue("@isDone", task.IsDone);
                cmd.Parameters.AddWithValue("@id", task.Id);
                cmd.Parameters.AddWithValue("@userId", UserId);
                cmd.ExecuteNonQuery();
            }
            catch (MySqlException ex)
            {
                Console.WriteLine($"Ошибка при обновлении задачи: {ex.Message}");
            }
            finally
            {
                db.closeConnection();
            }

            OnPropertyChanged(nameof(TotalTasksCount));
            OnPropertyChanged(nameof(CompletedTasksCount));
            OnPropertyChanged(nameof(TaskCompletionPercentage));
        }

        public void LoadUserData()
        {
            if (UserId == 0) return;

            try
            {
                db.openConnection();
                var cmd = new MySqlCommand("SELECT * FROM users WHERE id = @id", db.getConnection());
                cmd.Parameters.AddWithValue("@id", UserId);
                var reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    User = new User
                    {
                        Id = reader.GetInt32("id"),
                        Username = reader.GetString("name"),
                        Password = reader.GetString("password"),
                    };
                }
                reader.Close();
            }
            catch (MySqlException ex)
            {
                Console.WriteLine($"Ошибка при загрузке пользователя: {ex.Message}");
            }
            finally
            {
                db.closeConnection();
            }
        }

        public ObservableCollection<string> StatusFilters { get; } = new ObservableCollection<string> { "All", "Completed", "Incomplete" };

        private string _selectedStatus = "All";
        public string SelectedStatus
        {
            get => _selectedStatus;
            set
            {
                _selectedStatus = value;
                OnPropertyChanged();
                ApplyFilters();
            }
        }

        private DateTime? _selectedDate;
        public DateTime? SelectedDate
        {
            get => _selectedDate;
            set
            {
                _selectedDate = value;
                OnPropertyChanged();
                ApplyFilters();
            }
        }

        private ObservableCollection<Task> _filteredTasks;
        public ObservableCollection<Task> FilteredTasks
        {
            get => _filteredTasks;
            set
            {
                _filteredTasks = value;
                OnPropertyChanged();
            }
        }

        public ICommand ResetFiltersCommand => new RelayCommand(_ =>
        {
            SelectedStatus = "All";
            SelectedDate = null;
            ApplyFilters();
        });

        private void ApplyFilters()
        {
            var result = Tasks.AsEnumerable();

            if (SelectedStatus == "Completed")
                result = result.Where(t => t.IsDone);
            else if (SelectedStatus == "Incomplete")
                result = result.Where(t => !t.IsDone);

            if (SelectedDate != null)
                result = result.Where(t => t.StartTime.Date == SelectedDate.Value.Date || t.EndTime.Date == SelectedDate.Value.Date);

            FilteredTasks = new ObservableCollection<Task>(result);
        }


        public double TaskCompletionPercentage => TotalTasksCount == 0 ? 0 : (CompletedTasksCount / (double)TotalTasksCount) * 100;

        public event PropertyChangedEventHandler? PropertyChanged;
        protected void OnPropertyChanged([CallerMemberName] string? propertyName = null)
            => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
}
