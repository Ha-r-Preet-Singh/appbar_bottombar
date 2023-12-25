import 'package:flutter/material.dart';

class SliverAppBar extends StatefulWidget {
  const SliverAppBar({super.key, required bool floating, required bool snap, required PreferredSize bottom, required bool pinned,});

  @override
  State<SliverAppBar> createState() => _SliverAppBarState();
}

class _SliverAppBarState extends State<SliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(

            floating: true,
            snap: true,
            pinned: false,
            bottom: PreferredSize(child: Container(

            ),preferredSize:Size(double.infinity, 100)),
          ),

          SliverToBoxAdapter(
            child: Text("Scroll for more...."),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
                (context, index) {
              return Container(
                color: index.isOdd ? Colors.white : Colors.black12,
                height: 100.0,
                child: Center(
                  child: InkWell(
                      onTap: (){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Tapped $index!!")));
                      },
                      child: Text("$index",textScaleFactor: 5,)),
                ),
              );
            },

          ),),

        ],
      ),
    );
  }
}
