   M S B A M L   `   `   `  ����  ToDoListApp"    ToDoListApp.Views.AuthWindow   5   	   W SPresentationCore, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$
  Auth��5   	   $	��460��6   $	��820��6#    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�6    � WindowStartupLocation$ CenterScreen=�5   	    � AllowsTransparency$
 True��5   	   
������  � Icon 5
      �� 5   
    �� 	UriSource$/ )pack://application:,,,/Images/favicon.ico?�6   .��5      ��  �� CornerRadius$ 20��6    J� SnapsToDevicePixels$
 True��6   ��5   
   �� 5      	 �� 
StartPoint$		 0,0&�6"   
 �� EndPoint$	
 1,1&�63   .��5      �  � Color$ #64b4cc��6    � Offset$ 0Q�6/   � 5      $ #64b4cc��6   $	 0.5Q�6/   � 5      $ #2b6474��6   $ 1Q�6/   5      ._�5   
   � $
}�True��6    J� Clip 5      �� 5       �� Rect$ 0,0,820,460�6$    �� RadiusX$ 20Q�67    �� RadiusY$ 20Q�6D   .+�5      ]�    WindowPanel#��[  6   .+�5      �� -   5        $��btnMinimize��5        WindowPanelButton#��[ 6F   .��5      �� $��/Images/mini.png��6   5       �� 5!      -   5        $��btnMaximize��5!      #��[ 6F   .��5"      �� $��/Images/maxi.png��6   5#      �� 5$      -   5        $��btnClose��5$      #��[ 6@   .��5%      �� $��/Images/close.png��6   5&      5'      �� 5*      $��Welcome��6   $��56(�6'   $
��Bold"�65   ���#FAFAFA$��Center=�5+      $	��Top=�65   $��0,80,0,0q�6M   �� 5.      $��Username��6   $��16(�6(   $
��Bold"�66   ���#F0F0F0$��215,164,0,0q�5/      $	��Top=�6-   �� 50      -   5        $��txtUsername��50        RoundedTextBox#��[ 6)   $��215,185,215,0q�6Q   $	��Top=�6h   �� 53      $��Password��6   $��16(�6(   $
��Bold"�66   ���#F0F0F0$��215,224,0,0q�54      $	��Top=�6-   G� 55      -   5        $��txtPassword��55        RoundedPasswordBox#��[ 6-   $��215,245,215,0q�6Y   $	��Top=�56      62   �� 57      -   5        $��txtPasswordShow��57      #��[ 6-   $��215,245,215,0q�6U   $	��Top=�58      $y�	Collapsed=�6.   �� 5;      -   5        $��checkbxShowPass��5;      $��Show Password��6.   ���#F0F0F0$
��Bold"�6[   $��498,275,0,0q�5<      $	��Top=�6,   5=   9   �� 5?      -   5        $��btnClearText��5?      $��Clear��6,   $
��Bold"�69   ���#F0F0F0$	��Top=�5@      $
��Left=�60   $��576,290,0,0q�6K    � Cursor$
 Hand��5A      $��16��6E   $��29��6Q   �� 5E      -	   5        $��btnLogin��5E      $��LOGIN��6%     RoundedButton#��[ 65   $��215,330,215,0q�5F      $	��Top=�6,   $��50��6D   6P   �� 5I      $��Don't Have An Account��6   $��12(�65   $
��Bold"�6C   ���#F0F0F0$��Center=�5J   -   $	��Top=�6J   $��	0,390,0,0q�5K      �� 5L      -
   5        $��btnCreateAcc��5L      $��Create Account��6,   $��14(�6B   $
��Bold"�6P   ���#F0F0F0$
 Hand��5M   -   $��	Underline{�6;   $��Center=�5N      $	��Top=�65   $��	0,415,0,0q�5O      6+   5P      5Q      5R      