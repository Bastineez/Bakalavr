using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace ToDoListApp.Models
{
    public class Task : INotifyPropertyChanged
    {
        private int id;
        private int categoryId;
        private string title = "";
        private string description = "";
        private DateTime startTime;
        private DateTime endTime;
        private bool isDone;

        public int Id
        {
            get => id;
            set { id = value; OnPropertyChanged(); }
        }

        public int CategoryId
        {
            get => categoryId;
            set { categoryId = value; OnPropertyChanged(); }
        }

        public string Title
        {
            get => title;
            set { title = value; OnPropertyChanged(); }
        }

        public string Description
        {
            get => description;
            set { description = value; OnPropertyChanged(); }
        }

        public DateTime StartTime
        {
            get => startTime;
            set { startTime = value; OnPropertyChanged(); }
        }

        public DateTime EndTime
        {
            get => endTime;
            set { endTime = value; OnPropertyChanged(); }
        }

        public bool IsDone
        {
            get => isDone;
            set { isDone = value; OnPropertyChanged(); }
        }

        public event PropertyChangedEventHandler? PropertyChanged;
        protected void OnPropertyChanged([CallerMemberName] string? propertyName = null)
            => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
}
