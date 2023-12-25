import 'package:appbar_bottombar/tabs/chat_tab.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var listDestination = [
    ChatTabPage(),


    Container(
      color:  Colors.pink,
    ),
    Container(
      color:  Colors.blueAccent,
    ),
    Container(
      color:  Colors.yellow,
    ),
  ];
  int mSelectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bottom Navigation Bar"),
      ),
      body: listDestination[mSelectedIndex],
      drawer: Drawer(
        width: 300,
        backgroundColor: Colors.white,
        child: Column(

          children: [
            Container(
              height: 200,
              padding: EdgeInsets.all(21),
              color: Colors.orange,
              child: Align(
                alignment: Alignment.bottomCenter,


                child: Row(
                  children: [
                    CircleAvatar(),
                    SizedBox(
                      width: 11,
                    ),
                    Text("Harpreet Singh"),

                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  InkWell(
                    onTap: (){
                      mSelectedIndex = 0 ;
                      Navigator.pop(context);
                      setState(() {

                      });
                    },
                    child: ListTile(

                      leading: Icon(Icons.home),
                      title: Text("Home"),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      mSelectedIndex = 1 ;
                      Navigator.pop(context);
                      setState(() {

                      });
                    },
                    child: ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text("Account"),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      mSelectedIndex = 2;
                      Navigator.pop(context);
                      setState(() {

                      });
                    },
                    child: ListTile(
                      leading: Icon(Icons.info_outline),
                      title: Text("About Us"),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      mSelectedIndex = 3 ;
                      Navigator.pop(context);
                      setState(() {

                      });
                    },
                    child: ListTile(
                      leading: Icon(Icons.logout_rounded),
                      title: Text("Sign Out"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.orange.shade200,

        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        onDestinationSelected: (index){
          mSelectedIndex = index;
          setState(() {

          });

        },
        selectedIndex: mSelectedIndex,
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
      ),
    );
  }
}
