   M S B A M L   `   `   `  ����S  OHandyControl, Version=3.5.1.0, Culture=neutral, PublicKeyToken=45be8712787a1e5bS9clr-namespace:HandyControl.Controls;assembly=HandyControlHandyControl.Controls  5   	    ToDoListApp)   #ToDoListApp.Views.TaskDetailsWindow   5   	   W SPresentationCore, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Hhc9clr-namespace:HandyControl.Controls;assembly=HandyControl     5   	     � Title$  Task Details��5   	   $	��460��6   $	��620��6+    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � AllowsTransparency$
 True��5   	   
������  � Icon 5      �� 5   
    �� 	UriSource$/ )pack://application:,,,/Images/favicon.ico?�6   .��5      ��  �� CornerRadius$ 20��6    J� SnapsToDevicePixels$
 True��6   
�������$��2q�6N   ��5   
   �� 5       �� 
StartPoint$	 0,0&�6"   	 �� EndPoint$		 1,1&�63   .��5      � 
 � Color$
 #153342��6    � Offset$ 0Q�6/   � 5      $
 #295d69��6   $	 0.5Q�6/   � 5      $
 #64b4cc��6   $ 1Q�6/   5      ._�5   
   � $
}�True��6    J� Clip 5      �� 5       �� Rect$ 0,0,820,460�6$    �� RadiusX$ 20Q�67    �� RadiusY$ 20Q�6D   .+�5      �� $��Task Details��6   $
��Bold"�6,   $��Center=�5      $	��Top=�65   $��0,24,0,0q�5       
�������$��18(�6=   �� 5#      $��
Task Title��6   $��16(�6*   $
��Bold"�68   ���#F0F0F0$
��Left=�5$      $	��Top=�63   $��	33,74,0,0q�5%      �� 5&      $	��550��6-   $��30��69      RoundedTextBox#��[  5'      $��Center=�5(      $	��Top=�63   $��	0,100,0,0q�5)      ��5&      �� *Title+5)      �� 5,      $��Description��6   $��16(�6+   $
��Bold"�69   ���#F0F0F0$
��Left=�5-      $	��Top=�6'   $��
33,144,0,0q�5.      �� 5/      $	��550��63   $	��100��6?   #��[  50   
    �� TextWrapping$
 Wrap=�51   
    �� AcceptsReturn$
 True��6   $��Center=�52   
   $	��Top=�6'   $��	0,170,0,0q�53   
   $	��Top=�54   
    �� TextAlignment$
 Left=�55   
   ��5/      �� *Description+55   
   �� 59      $��
Start Time��6   $��16(�6*   $
��Bold"�68   ���#F0F0F0$
��Left=�5:      $	��Top=�63   $��106,310,0,0q�5;       J� RenderTransformOrigin$ 0.563,0.611&�6-   (  "System.Windows.Controls.DatePicker  5<      $	��134��6<   $��30��6H     RoundedDatePicker#��[ 5=      $��
78,336,0,0q�5>      ���	#FFDDEEFF$
��Bold"�5?   0   ���	#FF535978 � Language$ en-US�5@   0   $
��Left=�6A      SelectedDate 5<      �� *	StartTime+5@   A   �� 5C      $��End Time��6   $��16(�6(   $
��Bold"�66   ���#F0F0F0$
��Left=�5D      $	��Top=�63   $��436,310,0,0q�5E        5F      $	��134��6:   $��30��6F   #��[ 5G      $��404,336,0,0q�5H      ���	#FFDDEEFF$
��Bold"�5I   0   ���	#FF535978$ en-US�5J   0   $
��Left=�6A    5F      �� *	EndTime+5J   A   �� 5M      $��	Completed��64   $
��Bold"�5N      $��14(�6)   
�������$
��Left=�5P      $	��Top=�62   $��491,275,0,0q�5Q       d� 	IsChecked 5M      �� *IsDone+5Q      �� 5T      -   5        $
��Save��5T      $	��225��5U      $��53��6!     RoundedButton#��[ 5W      $
��Left=�5X      $	��Top=�60   $��
33,386,0,0q�5Y      �� 5Z      -   5        $
��Back��5Z      $	��225��5[      $��53��6!   #��[ 5]      $
��Left=�5^      $	��Top=�60   $��358,386,0,0q�5_      5a      5b      5c      