   M S B A M L   `   `   `  ����  ToDoListApp!    ToDoListApp.Views.RegWindow   5   	   W SPresentationCore, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Registration��5   	   $	��460��6   $	��820��6+    � WindowStyle$
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
 1,1&�63   .��5      �  � Color$ #64b4cc��6    � Offset$ 0Q�6/   � 5      $ #295d69��6   $	 0.5Q�6/   � 5      $ #153342��6   $ 1Q�6/   5      ._�5   
   � $
}�True��6    J� Clip 5      �� 5       �� Rect$ 0,0,820,460�6$    �� RadiusX$ 20Q�67    �� RadiusY$ 20Q�6D   .+�5      ]�    WindowPanel#��[  6   .+�5      �� -   5        $��btnMinimize��5        WindowPanelButton#��[ 6F   .��5      �� $��/Images/mini.png��6   5       �� 5!      -   5        $��btnMaximize��5!      #��[ 6F   .��5"      �� $��/Images/maxi.png��6   5#      �� 5$      -   5        $��btnClose��5$      #��[ 6@   .��5%      �� $��/Images/close.png��6   5&      5'      �� 5*      $��Get Started��6   $��56(�6+   $
��Bold"�69   ���#FAFAFA$��Center=�5+      $	��Top=�6-   $��0,53,0,0q�6E   �� 5.      $��Username��6   $��16(�6(   $
��Bold"�66   ���#F0F0F0$��215,143,0,0q�5/      $	��Top=�6%   �� 50      -   5        $��txtUsername��50        RoundedTextBox#��[ 6)   $��215,164,215,0q�51      $	��Top=�6%   6=   �� 54      $��Password��6   $��16(�6(   $
��Bold"�66   ���#F0F0F0$��215,199,0,0q�55      $	��Top=�6%   G� 56      -   5        $��txtPassword��56        RoundedPasswordBox#��[ 6-   $��215,220,215,0q�57      $	��Top=�6)   58      �� 5;      $��Confirm Password��6   $��16(�60   $
��Bold"�6>   ���#F0F0F0$��215,255,0,0q�5<      $	��Top=�6%   G� 5=      -   5        $��txtConfirmPassword��5=      #��[ 64   $��215,276,215,0q�5>      $	��Top=�6)   �� 5A      -   5        $��txtPasswordShow��5A      #��[ 6-   $��215,220,215,0q�5B      $	��Top=�6%   $y�	Collapsed=�5C      �� 5D      -   5        $��txtConfirmPasswordShow��5D      #��[ 64   $��215,276,215,0q�5E      $	��Top=�6%   $y�	Collapsed=�5F      �� 5I      -	   5        $��checkbxShowPass��5I      $��Show Password��6.   ���#F0F0F0$
��Bold"�5J   $   $��493,311,215,0q�5K      $	��Top=�6&   5L   1   �� 5O      -
   5        $��btnClearText��5O      $��Clear��6,   $
��Bold"�69   ���#F0F0F0$	��Top=�5P      $
��Left=�60   $��572,326,0,0q�6K    � Cursor$
 Hand��5Q       J� RenderTransformOrigin$ 0.489,2.068&�6E   $��29��6i   $��16��6t   �� 5T      -   5        $��btnRegister��5T      $��REGISTER��6(     RoundedButton#��[ 5U      $��215,349,215,0q�5V      $��50��6$   $	��Top=�60   5W      �� 5Z      $��Already Have An Account?��6   $��12(�68   $
��Bold"�6F   ���#F0F0F0$��Center=�5[   %   $	��Top=�6B   $��	0,404,0,0q�5\      �� 5]      -   5        $��btnBackToLogin��5]      $��Back to LOGIN��6.   $��14(�6C   $
��Bold"�6Q   ���#F0F0F0$
 Hand��5^   %   $��	Underline{�63   $��Center=�5_      $��
0,425,0,16q�5`      6$   5a      5b      5c      