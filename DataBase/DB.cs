using MySql.Data.MySqlClient;
using System;

namespace ToDoListApp.DataBase
{
    public class DB  // Change from internal to public
    {
        private MySqlConnection connection = new MySqlConnection(
            "server=localhost;" +
            "port=3306;" +
            "username=root;" +
            "password=root;" +
            "database=todoapp");




        // Открытие соединения
        public void openConnection()
        {
            if (connection.State == System.Data.ConnectionState.Closed)
            {
                try
                {
                    connection.Open();  // Открытие соединения
                }
                catch (Exception ex)
                {
                    throw new Exception("Ошибка при подключении к базе данных: " + ex.Message);
                }
            }
        }

        // Закрытие соединения
        public void closeConnection()
        {
            if (connection.State == System.Data.ConnectionState.Open)
            {
                connection.Close();  // Закрытие соединения
            }
        }

        // Получение объекта соединения
        public MySqlConnection getConnection()
        {
            return connection;  // Возвращаем соединение
        }

        public object ExecuteScalar(string query, Dictionary<string, object> parameters)
        {
            openConnection();
            using (var command = new MySqlCommand(query, getConnection()))
            {
                foreach (var param in parameters)
                    command.Parameters.AddWithValue(param.Key, param.Value);

                var result = command.ExecuteScalar();
                closeConnection();
                return result;
            }
        }

        public int ExecuteNonQuery(string query, Dictionary<string, object> parameters)
        {
            openConnection();
            using (var command = new MySqlCommand(query, getConnection()))
            {
                foreach (var param in parameters)
                    command.Parameters.AddWithValue(param.Key, param.Value);

                int result = command.ExecuteNonQuery();
                closeConnection();
                return result;
            }
        }

    }
}
