   M S B A M L   `   `   `  ���� F  BToDoListApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:ToDoListApp.ViewsToDoListApp.Views  )    #ToDoListApp.Views.LeaderboardWindow   W SPresentationCore, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     1localclr-namespace:ToDoListApp.Views       � Title$  LeaderboardWindow��$	��450��$	��800�� � WindowStyle$
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
}�True�� J� Clip ��  �� Rect$ 0,0,820,460� �� RadiusX$ 20Q� �� RadiusY$ 20Q�.+�]�    WindowPanel#��[  .+��� -   $��btnMinimize��  WindowPanelButton#��[ .���� $��/Images/mini.png���� -   $��btnMaximize��#��[ .���� $��/Images/maxi.png���� -   $��btnClose��#��[ .���� $��/Images/close.png��� $��20q�� $��20q� � RowDefinitions �� $
��Auto ��� $��* �.+��� $"��Top Users by Completed Tasks��$��24(�$
��Bold"�
�������$��Center=�$��0,0,0,20q��� $��1��$��0,10,0,0q�
������ $��0q�$��Disabled=�$
}�True�� �� AlternationCount$
 1000������ *Leaderboard+����  �� 
TargetType" ��.���  �� Property � �� �� Value$ Stretch=���  � ��$ 0q���  � ��$ 0q���  � ��
 ���� ��  � ��$ 0q���  �@�FocusVisualStyle Z� ��  � }�$
 True������ .R���  ��Name$ 
cardBorder�����	#AA295069$ 10�� �� Padding$ 15q�$��5q�$
 True�� J� RenderTransformOrigin$ 0.5,0.5&� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     Color$ Black��   
BlurRadius$ 10Q�   ShadowDepth$ 2Q�   Opacity$	 0.3Q�z���  �� ScaleX$ 1Q� �� ScaleY$ 1Q�._��  � ColumnDefinitions �� $��40 ��� $��* ��� $
��Auto �.+���   �� Orientation$  
Horizontal=�$��Center=�$��Center=�$��0��.+��� $��18(�$
��Bold"�
����ح�$��Center=�$��0,0,5,0q����� ! �� RelativeSource! �� " �� AncestorType" ListViewItem# �� Path$%# (ItemsControl.AlternationIndex)�  AddOneConverter$ �� 	Converter#$ [ �� $��20��$��20��$��Center=����� ! �� " ListViewItem$%# (ItemsControl.AlternationIndex)�  CrownIconConverter#$ [ �� $��16(�$��SemiBold"�
�������$��Center=�$��1������ *
Username+�� $��16(�$
��Bold"�
������$��2��$��Center=����� *CompletedTasks+���� " ��% �� Triggers% P� & P� Property& �@J�IsMouseOver' P� Value$
' True��( N� EnterActions( �� .���� .���� ) �� TargetProperty$1) +(Border.Background).(SolidColorBrush.Color)�	* �� To* 	#CC3A75A8+ g� Duration$+ 0:0:0.3D�W� $-) 'RenderTransform.(ScaleTransform.ScaleX)�	, W� To, 1.02$+ 0:0:0.3D�W� $-) 'RenderTransform.(ScaleTransform.ScaleY)�, 1.02$+ 0:0:0.3D�- N� ExitActions- �� .���� .���� $1) +(Border.Background).(SolidColorBrush.Color)�* 	#AA295069$+ 0:0:0.3D�W� $-) 'RenderTransform.(ScaleTransform.ScaleX)�, 1$+ 0:0:0.3D�W� $-) 'RenderTransform.(ScaleTransform.ScaleY)�, 1$+ 0:0:0.3D�