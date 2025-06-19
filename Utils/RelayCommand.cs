using System;
using System.Windows.Input;

namespace ToDoListApp.Utils
{
    public class RelayCommand : ICommand
    {
        private readonly Action<object?> _execute;
        private readonly Predicate<object?>? _canExecute;

        public RelayCommand(Action<object?> execute, Predicate<object?>? canExecute = null)
        {
            _execute = execute ?? throw new ArgumentNullException(nameof(execute));
            _canExecute = canExecute;
        }

        // Метод CanExecute проверяет, можно ли выполнить команду
        public bool CanExecute(object? parameter) => _canExecute?.Invoke(parameter) ?? true;

        // Метод Execute выполняет команду
        public void Execute(object? parameter) => _execute(parameter);

        // Событие, которое позволяет обновлять возможность выполнения команды
        public event EventHandler? CanExecuteChanged
        {
            add => CommandManager.RequerySuggested += value;
            remove => CommandManager.RequerySuggested -= value;
        }
    }
}
