   M S B A M L   `   `   `  ����S  OHandyControl, Version=3.5.1.0, Culture=neutral, PublicKeyToken=45be8712787a1e5bS9clr-namespace:HandyControl.Controls;assembly=HandyControlHandyControl.Controls  5   	    ToDoListApp%   ToDoListApp.Views.AddTaskWindow   5   	   W SPresentationCore, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Hhc9clr-namespace:HandyControl.Controls;assembly=HandyControl     5   	     � Title$  Add Task��5   	   $	��430��6   $	��420��6'    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � AllowsTransparency$
 True��5   	   
������  � Icon 5      �� 5   
    �� 	UriSource$/ )pack://application:,,,/Images/favicon.ico?�6   .��5      ��  �� CornerRadius$ 20��6    J� SnapsToDevicePixels$
 True��6   
�������$��2q�6N   ��5   
   �� 5       �� 
StartPoint$	 0,0&�6"   	 �� EndPoint$		 1,1&�63   .��5      � 
 � Color$
 #64b4cc��6    � Offset$ 0Q�6/   � 5      $
 #295d69��6   $	 0.5Q�6/   � 5      $
 #153342��6   $ 1Q�6/   5      ._�5   
   � $
}�True��6    J� Clip 5      �� 5       �� Rect$ 0,0,820,460�6$    �� RadiusX$ 20Q�67    �� RadiusY$ 20Q�6D   .+�5      �� $��Add Task��6   $
��Bold"�6(   $��Center=�5       $	��Top=�65   $��0,24,0,0q�5!      
�������$��18(�6=   �� 5$      $��	Task Name��6   $��16(�6)   $
��Bold"�67   ���#F0F0F0$
��Left=�5%      $	��Top=�63   $��	33,74,0,0q�5&      �� 5'      -   5        $��TaskName��5'      $	��350��6&   $��30��62      RoundedTextBox#��[  5(      $��Center=�5)      $	��Top=�63   $��	0,100,0,0q�5*      �� 5-      $��Task Description��6   $��16(�60   $
��Bold"�6>   ���#F0F0F0$
��Left=�5.      $	��Top=�63   $��
33,144,0,0q�5/      �� 50      -   5        $��TaskDescription��50      $	��350��6-   $��30��69   #��[  51      $��Center=�52      $	��Top=�63   $��	0,170,0,0q�53      �� 56      $��
Start Time��6   $��16(�6*   $
��Bold"�68   ���#F0F0F0$��Center=�57      $	��Top=�65   $��	0,213,0,0q�58      (  "System.Windows.Controls.DatePicker  59      -   5        $��	StartTime��59      $	��350��6*   $��30��66   $��Center=�5:      $	��Top=�66     RoundedDatePicker#��[ 5;      $��	0,240,0,0q�5<      ���	#FFDDEEFF$
��Bold"�6C   ���	#FF535978 � Language$ en-US�6l   �� 5?      $��End Time��6   $��16(�6(   $
��Bold"�66   ���#F0F0F0$��Center=�5@      $	��Top=�65   $��	0,284,0,0q�5A        5B      -   5        $��EndTime��5B      $	��350��6(   $��30��64   $��Center=�5C      $	��Top=�66   #��[ 5D      $��	0,310,0,0q�5E      ���	#FFDDEEFF$
��Bold"�6C   ���	#FF535978$ en-US�6l   �� 5H      -   5        $
��Save��5H      $	��150��5I      $��40��6!     RoundedButton#��[ 5K      $
��Left=�5L      $	��Top=�60   $��
58,361,0,0q�5M      �� 5N      -   5        $
��Back��5N      $	��150��5O      $��40��6!   #��[ 5Q      $
��Left=�5R      $	��Top=�60   $��213,361,0,0q�5S      5U      5V      5W      