   M S B A M L   `   `   `  ����F  BToDoListApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:ToDoListApp.ViewsToDoListApp.Views  5   	   )    #ToDoListApp.Views.LeaderboardWindow   5   	   W SPresentationCore, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:ToDoListApp.Views     5   	     � Title$  LeaderboardWindow��5   	   $	��450��6#   $	��800��60    � WindowStyle$
 None=�5	   	    � WindowStartupLocation$ CenterScreen=�5
   	    � AllowsTransparency$
 True��5   	   
������  � Icon 5      �� 5   
    �� 	UriSource$/ )pack://application:,,,/Images/favicon.ico?�6   .��5      ��  �� CornerRadius$ 20��6    J� SnapsToDevicePixels$
 True��6   
�������$��2q�6N   ��5   
   �� 5       �� 
StartPoint$	 0,0&�6"   	 �� EndPoint$		 1,1&�63   .��5      � 
 � Color$
 #64b4cc��6    � Offset$ 0Q�6/   � 5      $
 #295d69��6   $	 0.5Q�6/   � 5      $
 #153342��6   $ 1Q�6/   5      ._�5   
   � $
}�True��6    J� Clip 5      �� 5       �� Rect$ 0,0,820,460�6$    �� RadiusX$ 20Q�67    �� RadiusY$ 20Q�6D   .+�5       ]�    WindowPanel#��[  6   .+�5!      �� -   5        $��btnMinimize��5!        WindowPanelButton#��[ 6F   .��5"      �� $��/Images/mini.png��6   5#      �� 5$      -   5        $��btnMaximize��5$      #��[ 6F   .��5%      �� $��/Images/maxi.png��6   5&      �� 5'      -   5        $��btnClose��5'      #��[ 6@   .��5(      �� $��/Images/close.png��6   5)      5*      � 5,      $��20q�6   � 5.      $��20q�6    � RowDefinitions 5/      �� 50      $
��Auto �6$   �� 51      $��* �6$   .+�54      �� $"��Top Users by Completed Tasks��6   $��24(�55      $
��Bold"�56      
�������$��Center=�58      $��0,0,0,20q�59      �� 5;      $��1��6   $��0,10,0,0q�6L   
������ $��0q�5=      $��Disabled=�5>      $
}�True��5?       �� AlternationCount$
 1000��5@      ��5;   (   �� *Leaderboard+��5A      �� 5B       �� 
TargetType" ��6    .�5C      ��  �� Property � �� �� Value$ Stretch=�6K   �� 5D       � ��$ 0q�68   �� 5E       � ��$ 0q�67   �� 5F       � ��
 ���� 6;   �� 5G       � ��$ 0q�6@   �� 5H       �@�FocusVisualStyle 6A   Z� �� 5I       � }�$
 True��6=   5J      ��5M      �� 5N      .R�5O      ��  ��Name$ 
cardBorder��6%   ���	#AA295069$ 10��5Q   %    �� Padding$ 15q�5R   %   $��5q�5S   %   $
 True��5T   %    J� RenderTransformOrigin$ 0.5,0.5&�5U   %    J� Effect 5V   "   3  -System.Windows.Media.Effects.DropShadowEffect  5W   &      Color$ Black��67      
BlurRadius$ 10Q�6E      ShadowDepth$ 2Q�6U      Opacity$	 0.3Q�6e   z�5Z   "   �� 5[   &    �� ScaleX$ 1Q�65    �� ScaleY$ 1Q�6@   ._�5^   "   �  � ColumnDefinitions 5_   &   �� 5`   *   $��40 �6;   �� 5a   *   $��* �6;   �� 5b   *   $
��Auto �6;   .+�5f   &   ��   �� Orientation$  
Horizontal=�61   $��Center=�6J   $��Center=�6e   $��0��6�   .+�5g   *   �� $��18(�5h      $
��Bold"�5i      
����ح�$��Center=�5k      $��0,0,5,0q�5l      ��5g   4   �� ! �� RelativeSource! �� " �� AncestorType" ListViewItem# �� Path$%# (ItemsControl.AlternationIndex)�  AddOneConverter$ �� 	Converter#$ [ 5l      �� 5n   *   $��20��60   $��20��6;   $��Center=�5o      ��5p      �� ! �� " ListViewItem$%# (ItemsControl.AlternationIndex)�  CrownIconConverter#$ [ 5q   '   �� 5s   &   $��16(�5t      $��SemiBold"�5u      
�������$��Center=�5w      $��1��5x      ��5s   0   �� *
Username+5x      �� 5z   &   $��16(�5{      $
��Bold"�5|      
������$��2��5~      $��Center=�5      ��5z   0   �� *CompletedTasks+5      5�   #   ��5�   "   �� 5�   &   " ��6,   % �� Triggers% 5�   *   P� 5�   .   & P� Property& �@J�IsMouseOver' P� Value$
' True��6M   ( N� EnterActions( 5�   2   �� 5�   6   .��5�   :   �� .��5�   >   �� ) �� TargetProperty$1) +(Border.Background).(SolidColorBrush.Color)�6M   	* �� To* 	#CC3A75A86�   + g� Duration$+ 0:0:0.3D�6�   W� 5�   >   $-) 'RenderTransform.(ScaleTransform.ScaleX)�6N   	, W� To, 1.026�   $+ 0:0:0.3D�6�   W� 5�   >   $-) 'RenderTransform.(ScaleTransform.ScaleY)�6N   , 1.026�   $+ 0:0:0.3D�6�   5�   ;   5�   7   - N� ExitActions- 5�   2   �� 5�   6   .��5�   :   �� .��5�   >   �� $1) +(Border.Background).(SolidColorBrush.Color)�6M   * 	#AA2950696�   $+ 0:0:0.3D�6�   W� 5�   >   $-) 'RenderTransform.(ScaleTransform.ScaleX)�6N   , 16�   $+ 0:0:0.3D�6�   W� 5�   >   $-) 'RenderTransform.(ScaleTransform.ScaleY)�6N   , 16�   $+ 0:0:0.3D�6�   5�   ;   5�   7   5�   /   5�   '   5�      5�      5�      5�      5�      5�      5�      