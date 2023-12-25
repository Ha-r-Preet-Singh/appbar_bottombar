import 'package:appbar_bottombar/tabs/calls_tab.dart';
import 'package:appbar_bottombar/tabs/chat_tab.dart';
import 'package:appbar_bottombar/tabs/status_tab.dart';
import 'package:flutter/material.dart';

class TabNavigationBar extends StatefulWidget {
  @override
  State<TabNavigationBar> createState() => _TabNavigationBarState();
}

class _TabNavigationBarState extends State<TabNavigationBar>
    with SingleTickerProviderStateMixin {
  List<String> popMenuItems = ["A", "B", "C", "D", "E", "F"];
  String mIniatialValue = "A";

  late TabController tabController;
  String mTitle = "Chats";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);

    tabController.addListener(() {
      print(tabController.index);
      if (tabController.index == 0) {
        mTitle = "Chats";
      } else if (tabController.index == 1) {
        mTitle = "Status";
      } else {
        mTitle = "Calls";
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mTitle),
        centerTitle: true,
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        leading: Icon(Icons.light_mode_rounded),
        // shadowColor: Colors.pink,
        // elevation: 5,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.account_box_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          PopupMenuButton(
              color: Colors.yellow,
              tooltip: "Settings",
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 11,
              initialValue: mIniatialValue,
              onSelected: (value) {
                mIniatialValue = value;
                setState(() {});
              },
              itemBuilder: (_) {
                return popMenuItems
                    .map((e) => PopupMenuItem(value: e, child: Text("Item $e")))
                    .toList();
              }),
        ],
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(bottom: Radius.circular(21)),
// //
//
//         ),
        bottom: TabBar(controller: tabController, tabs: [
          Text("Chats"),
          Text("Status"),
          Text("Calls"),
        ]),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          ChatTabPage(),
          StatusTabPage(),
          CallsTabPage(),
        ],
      ),
    );
  }
}
