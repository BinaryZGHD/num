

import 'package:flutter/material.dart';
import 'package:num/page_sreen/pageCustomDialogBox.dart';

class class_Dialogs extends StatefulWidget {
  const class_Dialogs({Key? key}) : super(key: key);

  @override
  _class_DialogsState createState() => _class_DialogsState();
}

class _class_DialogsState extends State<class_Dialogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Dialog In Flutter"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Center(
          child: TextButton(
              onPressed: (){
                showDialog(context: context,
                  builder: (BuildContext context){
                  return Custom_Dialog_Box(
                    img: "assets/model.jpeg",
                    title: "Custom Dialog Demo",
                    descriptions: "เนื้อหาของ Dialog ที่สร้างเอง",
                    text: "Okey", detailf: '', imgf: 'assets/model.jpeg',
                    dietf: '', nfood: '', mashf: '', methodf: '', id: '',


                  );
                  }
                );
              },
            child: Text("Custom Dialog"),

          ),
        ),
      ),
    );
  }
}
