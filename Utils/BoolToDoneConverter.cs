using System;
using System.Globalization;
using System.Windows.Data;
using System.Windows.Media.Imaging;

namespace ToDoListApp.Utils
{
    public class BoolToDoneConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is bool isDone && parameter is string param)
            {
                switch (param)
                {
                    case "Icon":
                        string imagePath = isDone
                            ? "pack://application:,,,/Images/done.png"
                            : "pack://application:,,,/Images/undone.png";
                        return new BitmapImage(new Uri(imagePath));

                    case "Text":
                        return isDone ? "Done" : "Undone";
                }
            }
            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return false;
        }
    }
}
