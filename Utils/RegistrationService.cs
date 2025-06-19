using MySql.Data.MySqlClient;
using System;
using ToDoListApp.DataBase;

namespace ToDoListApp.Utils
{
    public class RegistrationService
    {
        private readonly DB _db;

        public RegistrationService(DB db)
        {
            _db = db;
        }

        public bool TryRegister(string username, string password, string confirmPassword, out string message)
        {
            // Проверяем на пустые поля
            if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(password) || string.IsNullOrWhiteSpace(confirmPassword))
            {
                message = "Пожалуйста, заполните все поля.";
                return false;
            }

            // Проверка на корректность логина и пароля
            if (!ValidationHelper.IsValidLoginOrPassword(username) || !ValidationHelper.IsValidLoginOrPassword(password))
            {
                message = "Логин и пароль могут содержать только латинские буквы и цифры.";
                return false;
            }

            // Проверяем совпадение паролей
            if (password != confirmPassword)
            {
                message = "Пароли не совпадают.";
                return false;
            }

            // Хэшируем пароль
            string hashedPassword = PasswordHelper.HashPassword(password);

            // Запрос для вставки данных в базу
            const string query = "INSERT INTO users (username, password) VALUES (@username, @password)";
            var parameters = new Dictionary<string, object>
            {
                { "@username", username },
                { "@password", hashedPassword }
            };

            try
            {
                // Выполнение запроса
                int result = _db.ExecuteNonQuery(query, parameters);

                // Проверка успешности регистрации
                if (result == 1)
                {
                    message = "Регистрация прошла успешно!";
                    return true;
                }
                else
                {
                    message = "Ошибка при регистрации.";
                    return false;
                }
            }
            catch (Exception ex)
            {
                message = $"Ошибка: {ex.Message}";
                return false;
            }
        }
    }
}
