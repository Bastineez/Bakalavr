using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using MySql.Data.MySqlClient;
using ToDoListApp.DataBase;

namespace ToDoListApp.Utils
{
    public class LeaderboardEntry
    {
        public string Username { get; set; } = "";
        public int CompletedTasks { get; set; }
    }

    public class LeaderboardViewModel : INotifyPropertyChanged
    {
        private readonly DB db = new DB();
        public ObservableCollection<LeaderboardEntry> Leaderboard { get; set; } = new();

        public LeaderboardViewModel()
        {
            LoadLeaderboard();
        }

        public void LoadLeaderboard()
        {
            Leaderboard.Clear();
            try
            {
                db.openConnection();
                var cmd = new MySqlCommand(@"
            SELECT users.username, COUNT(tasks.id) AS CompletedTasks
            FROM users
            JOIN tasks ON users.id = tasks.user_id
            WHERE tasks.is_done = 1
            GROUP BY users.id
            ORDER BY CompletedTasks DESC
            LIMIT 25", db.getConnection());

                var reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Leaderboard.Add(new LeaderboardEntry
                    {
                        Username = reader.GetString("username"),
                        CompletedTasks = reader.GetInt32("CompletedTasks")
                    });
                }
                reader.Close();
            }
            catch (MySqlException ex)
            {
                Console.WriteLine($"Ошибка при загрузке лидерборда: {ex.Message}");
            }
            finally
            {
                db.closeConnection();
            }
        }

        public event PropertyChangedEventHandler? PropertyChanged;
        protected void OnPropertyChanged([CallerMemberName] string? propertyName = null) =>
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
}
