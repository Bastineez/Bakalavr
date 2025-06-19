using MySql.Data.MySqlClient;
using System;
using System.Windows;
using System.Windows.Input;
using ToDoListApp.DataBase;
using ToDoListApp.Utils;

namespace ToDoListApp.Views
{
    public partial class RegWindow : Window
    {
        private readonly RegistrationService registrationService;
        private WindowDragHelper dragHelper;

        public RegWindow()
        {
            InitializeComponent();
            // Инициализируем сервис с доступом к базе данных
            registrationService = new RegistrationService(new DB());

            dragHelper = new WindowDragHelper(this);
        }

        private void btnMinimize_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void btnMaximize_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = this.WindowState == WindowState.Maximized ? WindowState.Normal : WindowState.Maximized;
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btnBackToLogin_Click(object sender, MouseButtonEventArgs e)
        {
            AuthWindow authWindow = new AuthWindow();
            authWindow.Show();
            this.Close();
        }

        private void checkbxShowPass_Checked(object sender, RoutedEventArgs e)
        {
            // Пароль
            txtPasswordShow.Text = txtPassword.Password;
            txtPassword.Visibility = Visibility.Collapsed;
            txtPasswordShow.Visibility = Visibility.Visible;

            // Подтверждение пароля
            txtConfirmPasswordShow.Text = txtConfirmPassword.Password;
            txtConfirmPassword.Visibility = Visibility.Collapsed;
            txtConfirmPasswordShow.Visibility = Visibility.Visible;
        }


        private void checkbxShowPass_Unchecked(object sender, RoutedEventArgs e)
        {
            // Пароль
            txtPassword.Password = txtPasswordShow.Text;
            txtPasswordShow.Visibility = Visibility.Collapsed;
            txtPassword.Visibility = Visibility.Visible;

            // Подтверждение пароля
            txtConfirmPassword.Password = txtConfirmPasswordShow.Text;
            txtConfirmPasswordShow.Visibility = Visibility.Collapsed;
            txtConfirmPassword.Visibility = Visibility.Visible;
        }

        private void txtPassword_PasswordChanged(object sender, RoutedEventArgs e)
        {
            if (checkbxShowPass.IsChecked == true)
            {
                txtPasswordShow.Text = txtPassword.Password;
            }
        }

        private void txtConfirmPassword_PasswordChanged(object sender, RoutedEventArgs e)
        {
            if (checkbxShowPass.IsChecked == true)
            {
                txtConfirmPasswordShow.Text = txtConfirmPassword.Password;
            }
        }


        private void btnClearText_Click(object sender, RoutedEventArgs e)
        {
            txtUsername.Clear();
            txtPassword.Clear();
            txtConfirmPassword.Clear();
        }

        private void btnRegister_Click(object sender, RoutedEventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Password;
            string confirmPassword = txtConfirmPassword.Password;

            // Используем RegistrationService для регистрации
            string message;
            bool isSuccess = registrationService.TryRegister(username, password, confirmPassword, out message);

            if (isSuccess)
            {
                MessageBox.Show(message, "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                // Открываем окно авторизации
                AuthWindow authWindow = new AuthWindow();
                authWindow.Show();
                this.Close();
            }
            else
            {
                MessageBox.Show(message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void txtUsername_TextChanged(object sender, System.Windows.Controls.TextChangedEventArgs e)
        {

        }
    }
}
