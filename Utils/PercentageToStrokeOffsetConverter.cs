using System;
using System.Globalization;
using System.Windows.Data;

namespace ToDoListApp.Utils
{
    public class PercentageToStrokeOffsetConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is double percentage)
            {
                // Ensure percentage is within bounds
                percentage = Math.Min(Math.Max(percentage, 0), 100);
                return 282.7433 - (percentage / 100 * 282.7433);
            }
            return 0;
        }


        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return 0; 
        }
    }
}
