   M S B A M L   `   `   `  ���� S  OHandyControl, Version=3.5.1.0, Culture=neutral, PublicKeyToken=45be8712787a1e5bS9clr-namespace:HandyControl.Controls;assembly=HandyControlHandyControl.Controls   ToDoListApp%   ToDoListApp.Views.AddTaskWindow   W SPresentationCore, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Hhc9clr-namespace:HandyControl.Controls;assembly=HandyControl       � Title$  Add Task��$	��430��$	��420�� � WindowStyle$
 None=� � WindowStartupLocation$ CenterScreen=� � AllowsTransparency$
 True��
������  � Icon ��  �� 	UriSource$/ )pack://application:,,,/Images/favicon.ico?�.����  �� CornerRadius$ 20�� J� SnapsToDevicePixels$
 True��
�������$��2q�����  �� 
StartPoint$	 0,0&�	 �� EndPoint$		 1,1&�.��� 
 � Color$
 #64b4cc�� � Offset$ 0Q�� $
 #295d69��$	 0.5Q�� $
 #153342��$ 1Q�._�� $
}�True�� J� Clip ��  �� Rect$ 0,0,820,460� �� RadiusX$ 20Q� �� RadiusY$ 20Q�.+��� $��Add Task��$
��Bold"�$��Center=�$	��Top=�$��0,24,0,0q�
�������$��18(��� $��	Task Name��$��16(�$
��Bold"����#F0F0F0$
��Left=�$	��Top=�$��	33,74,0,0q��� -   $��TaskName��$	��350��$��30��   RoundedTextBox#��[  $��Center=�$	��Top=�$��	0,100,0,0q��� $��Task Description��$��16(�$
��Bold"����#F0F0F0$
��Left=�$	��Top=�$��
33,144,0,0q��� -   $��TaskDescription��$	��350��$��30��#��[  $��Center=�$	��Top=�$��	0,170,0,0q��� $��
Start Time��$��16(�$
��Bold"����#F0F0F0$��Center=�$	��Top=�$��	0,213,0,0q�(  "System.Windows.Controls.DatePicker  -   $��	StartTime��$	��350��$��30��$��Center=�$	��Top=�  RoundedDatePicker#��[ $��	0,240,0,0q����	#FFDDEEFF$
��Bold"����	#FF535978 � Language$ en-US��� $��End Time��$��16(�$
��Bold"����#F0F0F0$��Center=�$	��Top=�$��	0,284,0,0q�  -   $��EndTime��$	��350��$��30��$��Center=�$	��Top=�#��[ $��	0,310,0,0q����	#FFDDEEFF$
��Bold"����	#FF535978$ en-US��� -   $
��Save��$	��150��$��40��  RoundedButton#��[ $
��Left=�$	��Top=�$��
58,361,0,0q��� -   $
��Back��$	��150��$��40��#��[ $
��Left=�$	��Top=�$��213,361,0,0q�