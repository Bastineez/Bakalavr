   M S B A M L   `   `   `  ���� S  OHandyControl, Version=3.5.1.0, Culture=neutral, PublicKeyToken=45be8712787a1e5bS9clr-namespace:HandyControl.Controls;assembly=HandyControlHandyControl.Controls   ToDoListApp)   #ToDoListApp.Views.TaskDetailsWindow   W SPresentationCore, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Hhc9clr-namespace:HandyControl.Controls;assembly=HandyControl       � Title$  Task Details��$	��460��$	��620�� � WindowStyle$
 None=� � WindowStartupLocation$ CenterScreen=� � AllowsTransparency$
 True��
������  � Icon ��  �� 	UriSource$/ )pack://application:,,,/Images/favicon.ico?�.����  �� CornerRadius$ 20�� J� SnapsToDevicePixels$
 True��
�������$��2q�����  �� 
StartPoint$	 0,0&�	 �� EndPoint$		 1,1&�.��� 
 � Color$
 #153342�� � Offset$ 0Q�� $
 #295d69��$	 0.5Q�� $
 #64b4cc��$ 1Q�._�� $
}�True�� J� Clip ��  �� Rect$ 0,0,820,460� �� RadiusX$ 20Q� �� RadiusY$ 20Q�.+��� $��Task Details��$
��Bold"�$��Center=�$	��Top=�$��0,24,0,0q�
�������$��18(��� $��
Task Title��$��16(�$
��Bold"����#F0F0F0$
��Left=�$	��Top=�$��	33,74,0,0q��� $	��550��$��30��   RoundedTextBox#��[  $��Center=�$	��Top=�$��	0,100,0,0q����� *Title+�� $��Description��$��16(�$
��Bold"����#F0F0F0$
��Left=�$	��Top=�$��
33,144,0,0q��� $	��550��$	��100��#��[   �� TextWrapping$
 Wrap=� �� AcceptsReturn$
 True��$��Center=�$	��Top=�$��	0,170,0,0q�$	��Top=� �� TextAlignment$
 Left=����� *Description+�� $��
Start Time��$��16(�$
��Bold"����#F0F0F0$
��Left=�$	��Top=�$��106,310,0,0q� J� RenderTransformOrigin$ 0.563,0.611&�(  "System.Windows.Controls.DatePicker  $	��134��$��30��  RoundedDatePicker#��[ $��
78,336,0,0q����	#FFDDEEFF$
��Bold"����	#FF535978 � Language$ en-US�$
��Left=�   SelectedDate �� *	StartTime+�� $��End Time��$��16(�$
��Bold"����#F0F0F0$
��Left=�$	��Top=�$��436,310,0,0q�  $	��134��$��30��#��[ $��404,336,0,0q����	#FFDDEEFF$
��Bold"����	#FF535978$ en-US�$
��Left=� �� *	EndTime+�� $��	Completed��$
��Bold"�$��14(�
�������$
��Left=�$	��Top=�$��491,275,0,0q� d� 	IsChecked �� *IsDone+�� -   $
��Save��$	��225��$��53��  RoundedButton#��[ $
��Left=�$	��Top=�$��
33,386,0,0q��� -   $
��Back��$	��225��$��53��#��[ $
��Left=�$	��Top=�$��358,386,0,0q�