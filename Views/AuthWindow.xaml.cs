using System.Windows;
using System.Windows.Input;
using ToDoListApp.DataBase;
using ToDoListApp.Utils;

namespace ToDoListApp.Views
{
    public partial class AuthWindow : Window
    {
        private WindowDragHelper dragHelper;

        public AuthWindow()
        {
            InitializeComponent();
            dragHelper = new WindowDragHelper(this);
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
            if (this.WindowState == WindowState.Normal)
                this.WindowState = WindowState.Maximized;
            else
                this.WindowState = WindowState.Normal;
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            // Получаем логин и пароль
            string username = txtUsername.Text;
            string password = txtPassword.Password;

            // Создаем объект DB для подключения к базе данных
            DB db = new DB();

            // Создаем объект AuthService, передавая экземпляр DB
            AuthService authService = new AuthService(db);

            // Пытаемся выполнить авторизацию и получить сообщение и userId
            string message;
            int userId;
            bool isLoginSuccessful = authService.TryLogin(username, password, out message, out userId);

            // Показать результат в MessageBox
            MessageBox.Show(message);

            // Если авторизация успешна, открываем главное окно
            if (isLoginSuccessful)
            {
                // Передаем userId, username и password в MainWindow
                MainWindow mainWindow = new MainWindow(userId, username, password);  // Передаем все параметры
                mainWindow.Show();

                // Закрываем окно авторизации
                this.Close();
            }
        }

        private void btnCreateAcc_Click(object sender, MouseButtonEventArgs e)
        {
            // Создаём экземпляр окна регистрации
            RegWindow regWindow = new RegWindow();

            // Открываем его
            regWindow.Show();

            // Закрываем текущее окно (если нужно)
            this.Close();
        }

        private void btnClearText_Click(object sender, RoutedEventArgs e)
        {
            txtUsername.Clear();
            txtPassword.Clear();
        }

        private void checkbxShowPass_Checked(object sender, RoutedEventArgs e)
        {
            // Копируем из PasswordBox в TextBox
            txtPasswordShow.Text = txtPassword.Password;

            // Переключаем видимость
            txtPassword.Visibility = Visibility.Collapsed;
            txtPasswordShow.Visibility = Visibility.Visible;
        }

        private void checkbxShowPass_Unchecked(object sender, RoutedEventArgs e)
        {
            // Копируем из TextBox в PasswordBox
            txtPassword.Password = txtPasswordShow.Text;

            // Переключаем видимость
            txtPasswordShow.Visibility = Visibility.Collapsed;
            txtPassword.Visibility = Visibility.Visible;
        }

        private void txtPassword_PasswordChanged(object sender, RoutedEventArgs e)
        {
            // Если "Show Password" активирован, обновляем TextBox
            if (checkbxShowPass.IsChecked == true)
            {
                txtPasswordShow.Text = txtPassword.Password;
            }
        }
    }
}
