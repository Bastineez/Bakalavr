using MySql.Data.MySqlClient;
using System;
using ToDoListApp.DataBase;

namespace ToDoListApp.Utils
{
    public class AuthService
    {
        private readonly DB _db;

        // Конструктор для инъекции зависимости базы данных
        public AuthService(DB db)
        {
            _db = db;
        }

        // Метод для попытки входа
        public bool TryLogin(string username, string password, out string message, out int userId)
        {
            userId = 0; // Изначально присваиваем значение 0

            // Проверка на пустые поля
            if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(password))
            {
                message = "Пожалуйста, заполните все поля."; // Сообщение о незаполненных полях
                return false;
            }

            // Проверка на валидность логина и пароля
            if (!ValidationHelper.IsValidLoginOrPassword(username) ||
                !ValidationHelper.IsValidLoginOrPassword(password))
            {
                message = "Логин и пароль могут содержать только латинские буквы и цифры."; // Ошибка валидации
                return false;
            }

            try
            {
                // SQL запрос для получения пароля пользователя по логину
                const string query = "SELECT id, password FROM users WHERE username = @username";

                // Использование блока using для автоматического закрытия подключения и команд
                using (var connection = _db.getConnection())
                using (var cmd = new MySqlCommand(query, connection))
                {
                    // Добавление параметра для SQL запроса
                    cmd.Parameters.AddWithValue("@username", username);

                    // Открытие подключения к базе данных
                    connection.Open();

                    // Чтение данных из базы
                    using (var reader = cmd.ExecuteReader())
                    {
                        // Если данные найдены
                        if (reader.Read())
                        {
                            userId = reader.GetInt32("id"); // Считываем id пользователя
                            string hashedPassword = reader.GetString("password"); // Считываем хэш пароля

                            // Проверка введенного пароля с хэшированным паролем
                            if (PasswordHelper.VerifyPassword(password, hashedPassword))
                            {
                                message = "Авторизация успешна!"; // Успешный вход
                                return true;
                            }
                            else
                            {
                                message = "Неверный пароль."; // Ошибка с паролем
                                return false;
                            }
                        }
                        else
                        {
                            message = "Пользователь не найден."; // Если пользователя с таким логином нет
                            return false;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Обработка ошибок подключения или выполнения запроса
                message = $"Ошибка при подключении к базе данных: {ex.Message}";
                return false;
            }
        }
    }
}
