



import 'package:flutter/material.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({super.key});

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("OverLays"),),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              showDialog(
                barrierDismissible: false,

                  barrierColor: Colors.redAccent,


                  context: context, builder: (_){
                return AlertDialog(
                  title:const Text("Delete"),
                  content:const Text("Are you sure want to delete?"),

                  icon:const Icon(Icons.delete),

                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child:const Text("Yes")),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child:const Text("No")),


                  ],
                );

              });
            }, child:const Text("Alert Dialog")),
            ElevatedButton(onPressed: (){
              showDialog(
                  // barrierDismissible: false,

                  // barrierColor: Colors.redAccent,


                  context: context, builder: (_){
                return const SimpleDialog(
                  title:Text("Select a Country"),
                  contentPadding: EdgeInsets.symmetric(horizontal: 11),
                  children: [
                    SimpleDialogOption(
                      child: Column(
                        children: [
                          Text("India"),
                          Text("Pakistan"),
                          Text("Baghladesh"),
                          Text("Sri Lanka"),
                          Text("Nepal"),
                          Text("Bhutan"),
                          Text("Manayanmar"),
                        ],
                      ),

                    ),



                  ],
                );

              });
            }, child: Text("Simple Dialog")),
            ElevatedButton(onPressed: (){
              showGeneralDialog(

                  context: context,
                pageBuilder: (BuildContext context , Animation<double> animation,
                    Animation<double> secondaryAnimation){
                    return Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Center(
                        child: Container(
                          height: 200,


                          color: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 11),
                          child: Material(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextField(),
                                TextField(),
                                Row(

                                  children: [
                                    TextButton(
                                    onPressed: (){
                                      Navigator.pop(context);
                                    },
                              child: Text("Add"),
                        ),
                                    TextButton(
                                      onPressed: (){},
                                      child: Text("Cancel"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                }
                 );
            }, child: Text("Simple General Dialog")),
          ],
        ),
      ),
    );
  }
}
