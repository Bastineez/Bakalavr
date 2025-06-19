using System;
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Input;

namespace ToDoListApp.Utils
{
    public class WindowDragHelper
    {
        // Импортируем WinAPI функции для перетаскивания окна
        [DllImport("user32.dll")]
        public static extern bool ReleaseCapture();

        [DllImport("user32.dll")]
        public static extern int SendMessage(IntPtr hWnd, int Msg, int wParam, int lParam);

        // Константы для отправки сообщений
        public const int WM_NCLBUTTONDOWN = 0xA1;
        public const int HTCAPTION = 0x2;

        private Window window;

        // Конструктор, принимающий окно, для которого будет включено перетаскивание
        public WindowDragHelper(Window window)
        {
            this.window = window;
            this.window.MouseDown += Window_MouseDown;
        }

        // Метод для обработки события нажатия кнопки мыши и начала перетаскивания
        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            // Если нажата левая кнопка мыши, начинаем перетаскивание
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                ReleaseCapture();  // Освобождаем захват мыши
                SendMessage(new System.Windows.Interop.WindowInteropHelper(window).Handle, WM_NCLBUTTONDOWN, HTCAPTION, 0);
            }
        }
    }
}
