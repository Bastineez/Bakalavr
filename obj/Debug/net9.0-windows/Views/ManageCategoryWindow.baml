   M S B A M L   `   `   `  ����  ToDoListApp,    &ToDoListApp.Views.ManageCategoryWindow   5   	   W SPresentationCore, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Manage Categories��5   	   $	��420��6#   $	��300��60    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � AllowsTransparency$
 True��5   	   
������  � Icon 5
      �� 5   
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
}�True��6    J� Clip 5      �� 5       �� Rect$ 0,0,820,460�6$    �� RadiusX$ 20Q�67    �� RadiusY$ 20Q�6D   .+�5      �� $��Manage categories��6   $
��Bold"�61   $��Center=�5       $	��Top=�65   $��0,24,0,0q�5!      
�������$��18(�6=   �� 5$       �� DisplayMemberPath$
 Name��5%      $	��250��5'      $	��146��6"   $��Center=�5(      $	��Top=�63   $��0,60,0,0q�5)      
������ $
��Auto=�5+         ListBoxStyle#��[  5,      ��5$      �� *
Categories+ �� SelectedItem 5&      �� *SelectedCategory+5,      �� 5/      $	��232��50      $��Center=�51      $	��Top=�63   $��	0,217,0,0q�52        RoundedTextBox#��[ 53      $��26��6>   ��5/      �� *NewCategoryName+ �� UpdateSourceTrigger$ PropertyChanged=�53   >   �� 56      $��Create category��6   $	��232��57      $��Center=�6!   $	��Top=�6>   $��	0,254,0,0q�58        RoundedButton#��[ 6(   $��45��6O   ��56   /   �� *AddCategoryCommand+58   O   �� 5:      $��Delete category��6   $	��232��5;      $��Center=�6!   $	��Top=�6>   $��	0,304,0,0q�5<      #��[ 6(   $��45��6O   ��5:   /   �� *DeleteCategoryCommand+5<   O   �� 5>      -   5        $��Close��5>      $	��232��5?      $��Center=�6!   $	��Top=�6>   $��	0,354,0,0q�5@      #��[ 6(   $��44��6O   5A      5B      5C      