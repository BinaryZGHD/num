

// run|Debug
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:num/page_sreen/pageCentralHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      // ชื่อ class // เนื้อหาhome: Page_Central(), // ชื่อ class // เนื้อหา

      theme: ThemeData(backgroundColor: Colors.black,primarySwatch: Colors.green),
      home: Page_Central_Home(), //เปลี่ยนสีแอพ    home: Page_Central_Home(),Dialogs()  Page_Central_Home //เปลี่ยนสีแอพ
    ); // วิตเก็ต
  }
}



