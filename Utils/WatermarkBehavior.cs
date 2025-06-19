using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace ToDoListApp.Utils
{
    public class WatermarkBehavior : DependencyObject
    {
        // Регистрация зависимого свойства для водяного знака
        public static readonly DependencyProperty WatermarkProperty =
            DependencyProperty.RegisterAttached(
                "Watermark",
                typeof(string),
                typeof(WatermarkBehavior),
                new UIPropertyMetadata(string.Empty, OnWatermarkChanged));

        // Установить значение водяного знака
        public static void SetWatermark(UIElement element, string value)
        {
            element.SetValue(WatermarkProperty, value);
        }

        // Получить значение водяного знака
        public static string GetWatermark(UIElement element)
        {
            return (string)element.GetValue(WatermarkProperty);
        }

        // Обработчик изменения водяного знака
        private static void OnWatermarkChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            if (d is TextBox textBox)
            {
                // Обработчик для события фокуса на текстовом поле
                textBox.GotFocus += (sender, args) =>
                {
                    // Если текст совпадает с водяным знаком, очищаем его
                    if (textBox.Text == (string)e.OldValue)
                    {
                        textBox.Clear();
                        textBox.Foreground = Brushes.Black;
                    }
                };

                // Обработчик для события потери фокуса
                textBox.LostFocus += (sender, args) =>
                {
                    // Если текстовое поле пустое, возвращаем водяной знак
                    if (string.IsNullOrWhiteSpace(textBox.Text))
                    {
                        textBox.Text = (string)e.NewValue;
                        textBox.Foreground = Brushes.Gray;
                    }
                };

                // Установка начального состояния
                if (string.IsNullOrWhiteSpace(textBox.Text))
                {
                    textBox.Text = (string)e.NewValue;
                    textBox.Foreground = Brushes.Gray;
                }
            }
        }
    }
}
