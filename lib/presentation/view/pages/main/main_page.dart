import 'package:flutter/material.dart';
import 'package:side_navigation/side_navigation.dart';
import 'package:work/presentation/style/style.dart';
import 'package:work/presentation/view/pages/home/home_page.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  /// Views to display
  List<Widget> views = const [
    Center(
      child: HomePage(),
    ),
    Center(
      child: Text('Account'),
    ),
    Center(
      child: Text('Settings'),
    ),
  ];

  /// The currently selected index of the bar
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// You can use an AppBar if you want to
      //appBar: AppBar(
      //  title: const Text('App'),
      //),

      // The row is needed to display the current view
      body: Row(
        children: [
          /// Pretty similar to the BottomNavigationBar!
          SideNavigationBar(
            expandable: false,
            initiallyExpanded: false,
            theme: SideNavigationBarTheme(
                backgroundColor: Style.primaryDarkColor,
                itemTheme: SideNavigationBarItemTheme(),
                togglerTheme: const SideNavigationBarTogglerTheme(),
                dividerTheme: SideNavigationBarDividerTheme.standard()),
            selectedIndex: selectedIndex,
            items:  const [
              
              SideNavigationBarItem(
                icon: Icons.dashboard,
                label: 'Dashboard',
              ),
              SideNavigationBarItem(
                icon: Icons.person,
                label: 'Account',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'Settings',
              ),
            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),

          /// Make it take the rest of the available width
          Expanded(
            child: views.elementAt(selectedIndex),
          )
        ],
      ),
    );
  }
}
