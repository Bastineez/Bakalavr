   M S B A M L   `   `   `  ���� F  BToDoListApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ToDoListApp.ModelsToDoListApp.Models  5clr-namespace:ToDoListApp.UtilsToDoListApp.Utils  "    ToDoListApp.Views.MainWindow   W SPresentationCore, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     /vm clr-namespace:ToDoListApp.Models     1localclr-namespace:ToDoListApp.Utils       � Title$  	ToDo List��$	��700��$
��1000�� � WindowStyle$
 None=� � WindowStartupLocation$ CenterScreen=� � AllowsTransparency$
 True��
������  � Icon ��  �� 	UriSource$/ )pack://application:,,,/Images/favicon.ico?� � 	Resources +   %ToDoListApp.Utils.BoolToDoneConverter   BoolToDoneConverter9   3ToDoListApp.Utils.PercentageToStrokeOffsetConverter % !PercentageToStrokeOffsetConverter��%   &	        &	          .����  �� CornerRadius$ 20�� J� SnapsToDevicePixels$
 True������ 	 �� 
StartPoint$		 0,0&�
 �� EndPoint$	
 1,1&�.���  � Color$ #64b4cc�� � Offset$ 0Q�� $ #295d69��$	 0.5Q�� $ #153342��$ 1Q�._�� $
}�True�� � RowDefinitions �� �� $��0* � J� Clip ��  �� Rect$ 0,0,1020,760� �� RadiusX$ 20Q� �� RadiusY$ 20Q�.+�]�   WindowPanel#��[ .+��� -   $��btnMinimize��  WindowPanelButton#��[ .���� $��/Images/mini.png���� -   $��btnMaximize��#��[ .���� $��/Images/maxi.png���� -   $��btnClose��#��[ .���� $��/Images/close.png���� $��
Categories��$
��Bold"�$
��Left=�$	��Top=�$��
260,73,0,0q�$��29��$	��105��$��20(�
��������� $	��714��$��36��$
��Left=�$	��Top=�$��261,107,0,0q�$
��Auto=�$��Disabled=�
������ 
������ ���� *
Categories+ �� SelectedItem �� *SelectedCategory+  �� 
TargetType �� BasedOn��%   '��       7���� " ��8   ���� .R���  �� Orientation$ 
Horizontal=����� " ��.���  �� Property � �� �� Value
 ���� ��  � ��
 ���� ��  � ��$ 0q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � ��$ 4q���  � ��$
 Bold"���  � ��$ 12(���  � ��
 �������  �@J�RenderTransformOrigin$ 0.5,0.5&���  � z� ��  �� ScaleX$ 1Q� �� ScaleY$ 1Q� �� Triggers ��  �� Binding �� *IsMouseOver+ �� RelativeSource �� *Self+ �� Value True N� EnterActions �� .���� .��W�  �� TargetProperty$ RenderTransform.ScaleX�  W� From  1	! W� To! 1.1" g� Duration$" 0:0:0.2D�W� $ RenderTransform.ScaleY�  1! 1.1$" 0:0:0.2D�# N� ExitActions# �� .���� .��W� $ RenderTransform.ScaleX�  1.1! 1$" 0:0:0.2D�W� $ RenderTransform.ScaleY�  1.1! 1$" 0:0:0.2D���  �� *
IsSelected+ �� *Self+ True.a���  � �� �#1c1f21��  � ��
 �������  � ��
 ���� ��  � ��$ 14(����� .R��� ���#012136$ 10��$ �� Padding$$ 3q�
������ ._��� $��Center=�$��Center=�
�������$��NoWrap=����� *Name+�� .+��� $	��224��
���   �$��5q�$��45��$
��Left=�$��Center=�$��0q�
������ % �� Left$% 10��
& �� Top$	& 109������ *StatusFilters+ �� *SelectedStatus+���� ' �� 
TargetType"' ��.R�� .+�d� $��ToggleButton��$|�false��( �� 	ClickMode$( Press=�
������ $��0q�) d� 	IsChecked) �� * �� Path$* IsDropDownOpen� �� *TemplatedParent+.���� $ 8��
�������
�������$��1q�$$ 5q�$
 True��._�]� .+��� $��ContentSite��+ �� SelectionBoxItem#��z+ , �� SelectionBoxItemTemplate#��z, #��z��$��0q�$��Center=�$
��Left=�$
��Left=�$	��210��F� $��Right=�$��5,0,0,0q�$��Center=�
�������"����        � 	=  	= � z     	� $��Popup��$��Bottom=�- �� IsDropDownOpen#��z- . � AllowsTransparency$
. True��$|�False��$
��Fade=�.��� $��DropDown��$
 True��$	��224��$	��200��.+��� $ 8��
�������
�������$��1q��� $��4,6,4,6q�$
 True��.���� / K� IsItemsHost$
/ True��-  'System.Windows.Input.KeyboardNavigation0   DirectionalNavigation$0 	Contained=�(  "System.Windows.Controls.DatePicker  $	��224��$% 10��$& 64��  RoundedDatePicker#��[ 
�������
���   �$��40��$
��Left=�$��Center=�1   SelectedDate1 �� *SelectedDate+�� $	��100��$% 72��$	& 160��$��Reset��  RoundedButton#��[ $��30��$
��Left=�$��Center=����� *ResetFiltersCommand+�� -   $��Leaderboard��$	��225��$��40��$
��Left=�$	��Top=�$��
10,267,0,0q�#��[ �� $��	All tasks��$��10,329,764,329q�#��[ ���� *ShowAllTasksCommand+�� -   $��Manage categories��$	��226��$
��Left=�$	��Top=�$��
10,394,0,0q�$��42��#��[ ���� *ManageCategoryCommand+�� -   $��Logout��$	��225��$��40��$
��Left=�$	��Top=�$��
10,459,0,0q�#��[ �� $
��Left=�$	��Top=�$��
10,525,0,0q�
�������$��14(�$
��Bold"����� *TotalTasksCount+2 �� StringFormat$2 All tasks: {0}���� $
��Left=�$	��Top=�$��
10,550,0,0q�
�������$��14(�$
��Bold"����� *CompletedTasksCount+$2 Complete: {0}��� $��90��$��90��$��78,585,832,25q� 3 ��Name  ProgressAnimation4 �� 
TargetName5 g� AutoReverse6 �� 	Converter��%�   &	       7  �� $3 ProgressStoryboard��.��W� $4 ProgressCircle��$ StrokeDashOffset�$" 0:0:0.5D�$5 False��  �� *" PreviousTaskCompletionPercentage+! �� *TaskCompletionPercentage+86   .+�A� ���#0C1F25$��7��A� -   7 A�Name$7 ProgressCircle�����#e4f2f6$��10��8 �� StrokeStartLineCap$8 Round=�9 �� StrokeEndLineCap$9 Round=�$��90��$��90��
������ : J� RenderTransformOrigin$: 0.5,0.5&�z��� ; �� Angle$	; -90Q�< �� StrokeDashArray$< 282.7433R�= �� StrokeDashOffset= �� $* TaskCompletionPercentage�#6 [ �� $��16(�$
��Bold"�$��Center=�$��Center=�
����������� *TaskCompletionPercentage+$2 {0:F0}%���� 
�������$	��225��$��1��$
��Left=�$	��Top=�$��
10,510,0,0q�> J� Opacity$	> 0.3Q��� 
�������$	��225��$��1��$
��Left=�$	��Top=�$��
10,575,0,0q�$	> 0.3Q��� 
�������$��3��$	��666��$
��Left=�$��Center=�$��	246,0,0,0q�$: 0.5,0.5&�z�V� .~��� $ -1Q��� �� T� �� $��Tasks��$
��Bold"�$
��Left=�$	��Top=�$��260,168,0,0q�$��23��$��62��
�������$��20(��� $	��715��$	��468��$
��Left=�$	��Top=�$��260,207,0,0q�$��Stretch=�
������ 
�������
������ ���� *FilteredTasks+ �� *SelectedTask+���� " ��.���  � ��
 ���� ��  � ��
 ���� ��  � ��$ 0q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � ��$ 4q���  � ��$
 Bold"���  � ��$ 12(���  � ��
 �������  �@J�RenderTransformOrigin$ 0.5,0.5&���  � z� �� $ 1Q�$ 1Q� ��  �� *IsMouseOver+ �� *Self+ True �� .���� .��W� $ RenderTransform.ScaleX�  1! 1.01$" 0:0:0.2D�W� $ RenderTransform.ScaleY�  1! 1.01$" 0:0:0.2D�# �� .���� .��W� $ RenderTransform.ScaleX�  1.01! 1$" 0:0:0.2D�W� $ RenderTransform.ScaleY�  1.01! 1$" 0:0:0.2D���  �� *
IsSelected+ �� *Self+ True.a���  � �� �#0e212e��  � ��
 �������  � ��
 ���� ��  � ��$ 12(����� .R��� $$ 10q�$	��0,5q�$ 8�����#295d69._�� $��Stretch=�$��Center=�? � ColumnDefinitions? �� $	��115 ��� $	��210 ��� $	��140 ��� $	��140 ��� $��20 ��� $��30 �.+��� $
��Bold"�$��16(�$��Center=�$��Stretch=�$	��5,0q�$��0������ *Title+  TitleTrimmer#6 [ �� $
��Wrap=�
�������$��Center=�$��Stretch=�$	��5,0q�$��1������ *Description+  DescriptionTrimmer#6 [ �� 
�������$��Center=�$��Stretch=�$	��5,0q�$��2������ *	StartTime+$2 Start: {0:dd/MM/yyyy}���� 
�������$��Center=�$��Stretch=�$	��5,0q�$��3������ *	EndTime+$2 End: {0:dd/MM/yyyy}���� 
�������$��Center=�$��Stretch=�$	��5,0q�$��4������ *IsDone+#6 [  d�  	 TaskToggleButtonStyle#��[	 $��Center=�$��5��) �� *IsDone+@ �� Mode$@ TwoWay=�A �� UpdateSourceTrigger$A PropertyChanged=�.���� $��20��$��20������ *IsDone+#6 [  B �� ConverterParameter$
B Icon���� -   $��Create��$��91��$
��Left=�$	��Top=�$��784,160,0,0q�$��30��#��[ ���� *OpenAddTaskWindow+�� $��Delete��$��91��$
��Left=�$	��Top=�$��880,160,0,0q�$��30��#��[ ���� *DeleteTaskCommand+���� *SelectedTask+�� 
�������$��3��$	��237��$
��Left=�$	��Top=�$��128,100,0,0q�$: 0.5,0.5&�z�V� .~��� $ -1Q��� �� $; 90.295Q�T� 