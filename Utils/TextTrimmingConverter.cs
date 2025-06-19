using System;
using System.Globalization;
using System.Windows.Data;

namespace ToDoListApp.Utils
{
    public class TextTrimmingConverter : IValueConverter
    {
        public int MaxLength { get; set; } = 20;

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string text)
            {
                if (text.Length <= MaxLength)
                    return text;
                else
                    return text.Substring(0, MaxLength) + "...";
            }
            return value;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture) =>
            throw new NotImplementedException();
    }
}
