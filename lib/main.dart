import 'package:flutter/material.dart';
import 'package:my_widgets_app/pages/alert_dialog_page.dart';
import 'package:my_widgets_app/pages/align_page.dart';
import 'package:my_widgets_app/pages/animated_container_page.dart';
import 'package:my_widgets_app/pages/bottom_navigation_page.dart';
import 'package:my_widgets_app/pages/bottom_sheet_page.dart';
import 'package:my_widgets_app/pages/card_page.dart';
import 'package:my_widgets_app/pages/center_page.dart';
import 'package:my_widgets_app/pages/checkbox_page.dart';
import 'package:my_widgets_app/pages/chip_page.dart';
import 'package:my_widgets_app/pages/column_page.dart';
import 'package:my_widgets_app/pages/container_page.dart';
import 'package:my_widgets_app/pages/data_table_page.dart';
import 'package:my_widgets_app/pages/dismissible_page.dart';
import 'package:my_widgets_app/pages/drawer_page.dart';
import 'package:my_widgets_app/pages/dropdown_button_page.dart';
import 'package:my_widgets_app/pages/elevated_button_page.dart';
import 'package:my_widgets_app/pages/expanded_page.dart';
import 'package:my_widgets_app/pages/expansion_panel_page.dart';
import 'package:my_widgets_app/pages/form_page.dart';
import 'package:my_widgets_app/pages/grid_view_page.dart';
import 'package:my_widgets_app/pages/hero_page.dart';
import 'package:my_widgets_app/pages/image_page.dart';
import 'package:my_widgets_app/pages/inkwell_page.dart';
import 'package:my_widgets_app/pages/list_view_page.dart';
import 'package:my_widgets_app/pages/navigator_page.dart';
import 'package:my_widgets_app/pages/padding_page.dart';
import 'package:my_widgets_app/pages/pageview_page.dart';
import 'package:my_widgets_app/pages/progress_indicator_page.dart';
import 'package:my_widgets_app/pages/radio_page.dart';
import 'package:my_widgets_app/pages/reorderable_list_view_page.dart';
import 'package:my_widgets_app/pages/row_page.dart';
import 'package:my_widgets_app/pages/sizedbox_page.dart';
import 'package:my_widgets_app/pages/slider_page.dart';
import 'package:my_widgets_app/pages/snackbar_page.dart';
import 'package:my_widgets_app/pages/stack_page.dart';
import 'package:my_widgets_app/pages/stepper_page.dart';
import 'package:my_widgets_app/pages/switch_page.dart';
import 'package:my_widgets_app/pages/tabbar_page.dart';
import 'package:my_widgets_app/pages/text_page.dart';
import 'package:my_widgets_app/pages/tooltip_page.dart';
import 'package:my_widgets_app/pages/wrap_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> widgetList = [
    {'title': 'Align', 'page': AlignPage()},
    {'title': 'Center', 'page': CenterPage()},
    {'title': 'Padding', 'page': PaddingPage()},
    {'title': 'Container', 'page': ContainerPage()},
    {'title': 'Text', 'page': TextPage()},
    {'title': 'Row', 'page': RowPage()},
    {'title': 'Column', 'page': ColumnPage()},
    {'title': 'Stack', 'page': StackPage()},
    {'title': 'ListView', 'page': ListViewPage()},
    {'title': 'Expanded', 'page': ExpandedPage()},
    {'title': 'SizedBox', 'page': SizedBoxPage()},
    {'title': 'InkWell', 'page': InkWellPage()},
    {'title': 'Image', 'page': ImagePage()},
    {'title': 'Form', 'page': FormPage()},
    {'title': 'ElevatedButton', 'page': ElevatedButtonPage()},
    {'title': 'Checkbox', 'page': CheckboxPage()},
    {'title': 'Switch', 'page': SwitchPage()},
    {'title': 'Slider', 'page': SliderPage()},
    {'title': 'DropdownButton', 'page': DropdownButtonPage()},
    {'title': 'Radio', 'page': RadioPage()},
    {'title': 'ProgressIndicator', 'page': ProgressIndicatorPage()},
    {'title': 'AlertDialog', 'page': AlertDialogPage()},
    {'title': 'BottomSheet', 'page': BottomSheetPage()},
    {'title': 'SnackBar', 'page': SnackbarPage()},
    {'title': 'Tooltip', 'page': TooltipPage()},
    {'title': 'Navigator', 'page': NavigatorPage()},
    {'title': 'Drawer', 'page': DrawerPage()},
    {'title': 'TabBar', 'page': TabBarPage()},
    {'title': 'BottomNavigationBar', 'page': BottomNavigationPage()},
    {'title': 'PageView', 'page': PageViewPage()},
    {'title': 'Stepper', 'page': StepperPage()},
    {'title': 'ExpansionPanelList', 'page': ExpansionPanelPage()},
    {'title': 'DataTable', 'page': DataTablePage()},
    {'title': 'GridView', 'page': GridViewPage()},
    {'title': 'ListView + ListTile', 'page': ListViewPage()},
    {'title': 'Dismissible', 'page': DismissiblePage()},
    {'title': 'ReorderableListView', 'page': ReorderableListViewPage()},
    {'title': 'Chip', 'page': ChipPage()},
    {'title': 'Card', 'page': CardPage()},
    {'title': 'Hero', 'page': HeroPage()},
    {'title': 'Wrap', 'page': WrapPage()},
    {'title': 'AnimatedContainer', 'page': AnimatedContainerPage()},
    // сюда позже добавим все остальные виджеты из списка
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Виджеты')),
      body: ListView.builder(
        itemCount: widgetList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(widgetList[index]['title']),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => widgetList[index]['page']),
              );
            },
          );
        },
      ),
    );
  }
}