using System;
using System.Globalization;
using System.Windows.Data;
using System.Windows.Media.Imaging;

namespace ToDoListApp.Utils
{
    public class CrownIconConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is int index)
            {
                switch (index)
                {
                    case 0:
                        return new BitmapImage(new Uri("pack://application:,,,/Images/gold_crown.png"));
                    case 1:
                        return new BitmapImage(new Uri("pack://application:,,,/Images/silver_crown.png"));
                    case 2:
                        return new BitmapImage(new Uri("pack://application:,,,/Images/bronze_crown.png"));
                    default:
                        return null;
                }
            }
            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture) =>
            throw new NotImplementedException();
    }
}
