import 'package:flutter/material.dart';
import 'constant.dart';
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Back,
        body: Container(
          height: double.infinity,
          width: double.infinity,
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Books",style: TextStyle(fontSize: 20,color: Colors.black)),
            SizedBox(height: 8,),
            Container(
           //   width: double.infinity,
              height: 190,
              child: Row(children: [
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context,index){
                      return BookWidget();
                    },
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    ))
                ]),
            ),
          ],
        ),
      )),
    );
  }
  Widget BookWidget(){
  return Container(
    height: 190,
    width: 130,
    margin: EdgeInsets.only(right: 7),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(width: 3.5 ,color: Colors.blue),
      
    ),
   child: Column(children: [
    
   ]),
  );
} 
}

