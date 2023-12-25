
import 'package:appbar_bottombar/tabs/calls_tab.dart';
import 'package:appbar_bottombar/tabs/chat_tab.dart';
import 'package:appbar_bottombar/tabs/status_tab.dart';
import 'package:flutter/material.dart';

class NavRailExample extends StatefulWidget {
  const NavRailExample({super.key});

  @override
  State<NavRailExample> createState() => _NavRailExampleState();
}

class _NavRailExampleState extends State<NavRailExample> {
  var listDestination = [

    Container(
      color:  Colors.pink,
    ),
    Container(
      color:  Colors.blueAccent,
    ),
    Container(
      color:  Colors.yellow,
    ),
    Container(
      color:  Colors.red,
    ),
  ];
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  bool showLeading = false;
  bool showTrailing = false;
  double groupAlignment = -1.0;

  @override
  Widget build(BuildContext context) {

    var media = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        children: <Widget>[
          if(media>=640)

          NavigationRail(
            selectedIndex: _selectedIndex,
            groupAlignment: groupAlignment,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: labelType,


            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.favorite_border),
                selectedIcon: Icon(Icons.favorite),
                label: Text('First'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.bookmark_border),
                selectedIcon: Icon(Icons.book),
                label: Text('Second'),
              ),
              NavigationRailDestination(

                icon: Icon(Icons.star_border),
                selectedIcon: Icon(Icons.star),
                label: Text('Third'),
              ),
              NavigationRailDestination(

                icon: Icon(Icons.star_border),
                selectedIcon: Icon(Icons.star),
                label: Text('Third'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(child: listDestination[_selectedIndex]),

        ],
      ),
      bottomNavigationBar:media < 640 ? NavigationBar(
        indicatorColor: Colors.orange.shade200,

        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        onDestinationSelected: (index){
          _selectedIndex = index;
          setState(() {

          });

        },
        selectedIndex: _selectedIndex,
        backgroundColor: Colors.orange.shade300,
        destinations:const [
          NavigationDestination(
              icon:Icon(Icons.home) ,
              label: "Home"),
          NavigationDestination(
              icon:Icon(Icons.account_circle) ,
              label: "Account"),
          NavigationDestination(
              icon:Icon(Icons.home) ,
              label: "Home"),
          NavigationDestination(
              icon:Icon(Icons.account_circle) ,
              label: "Account"),
        ],
      ) : null,
    );
  }
}
