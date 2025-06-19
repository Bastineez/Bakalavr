using System.Text.RegularExpressions;

namespace ToDoListApp.Utils
{
    public static class ValidationHelper
    {
        public static bool IsValidLoginOrPassword(string input)
        {
            // Регулярное выражение, проверяющее, что строка состоит из латинских букв и цифр, длина от 3 до 30 символов.
            return Regex.IsMatch(input, @"^[a-zA-Z0-9]{3,30}$");
        }
    }
}
