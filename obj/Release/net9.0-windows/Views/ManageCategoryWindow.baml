   M S B A M L   `   `   `  ����   ToDoListApp,    &ToDoListApp.Views.ManageCategoryWindow   W SPresentationCore, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Title$  Manage Categories��$	��420��$	��300�� � WindowStyle$
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
}�True�� J� Clip ��  �� Rect$ 0,0,820,460� �� RadiusX$ 20Q� �� RadiusY$ 20Q�.+��� $��Manage categories��$
��Bold"�$��Center=�$	��Top=�$��0,24,0,0q�
�������$��18(���  �� DisplayMemberPath$
 Name��$	��250��$	��146��$��Center=�$	��Top=�$��0,60,0,0q�
������ $
��Auto=�   ListBoxStyle#��[  ���� *
Categories+ �� SelectedItem �� *SelectedCategory+�� $	��232��$��Center=�$	��Top=�$��	0,217,0,0q�  RoundedTextBox#��[ $��26������ *NewCategoryName+ �� UpdateSourceTrigger$ PropertyChanged=��� $��Create category��$	��232��$��Center=�$	��Top=�$��	0,254,0,0q�  RoundedButton#��[ $��45������ *AddCategoryCommand+�� $��Delete category��$	��232��$��Center=�$	��Top=�$��	0,304,0,0q�#��[ $��45������ *DeleteCategoryCommand+�� -   $��Close��$	��232��$��Center=�$	��Top=�$��	0,354,0,0q�#��[ $��44��