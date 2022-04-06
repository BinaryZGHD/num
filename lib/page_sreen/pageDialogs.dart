

import 'package:flutter/material.dart';
import 'package:num/page_sreen/pageCustomDialogBox.dart';

class Dialogs extends StatefulWidget {
  const Dialogs({Key? key}) : super(key: key);

  @override
  _DialogsState createState() => _DialogsState();
}

class _DialogsState extends State<Dialogs> {
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
                    descriptions: "Hii all this is a custom dialog in flutter and  you will be use in your flutter applications",
                    text: "Okey", detailf: '', imgf: 'assets/model.jpeg', dietf: '', nfood: '', mashf: '', methodf: '', id: '',


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
