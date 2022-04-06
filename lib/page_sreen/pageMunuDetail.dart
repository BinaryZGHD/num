import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class Page_Menu_Detail extends StatelessWidget {
  // Page_Menu
  final String nfood ;
  final String imgf ;
  final String detailf ;
  final String dietf ;
  final String mashf ;
  final String methodf ;
  const Page_Menu_Detail({Key? key, required this.nfood, required this.imgf, required this.detailf, required this.dietf, required this.mashf, required this.methodf, data, }) : super(key: key);



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyPage_Menu(
      // title: "MyHPc",
      namefood: nfood,
      imgfood: imgf,
      detailfood:detailf,
      dietfood:dietf,
      mashfood:mashf,
      methodfood:methodf,
    );
  }
}

class MyPage_Menu extends StatefulWidget {
  const MyPage_Menu({Key? key,
    required this.namefood, required this.imgfood,
    required this.detailfood, required this.dietfood,
    required this.mashfood, required this.methodfood,
  }) : super(key: key);


  final String namefood ;
  final String imgfood ;
  final String detailfood ;
  final String dietfood ;
  final String mashfood ;
  final String methodfood ;


  @override
  State<MyPage_Menu> createState() => _MyPage_Menu();
}

class _MyPage_Menu extends State<MyPage_Menu> {
  // int _counter = 0;
  //
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( widget.namefood),
        // Text("ต้มยำกุ้ง"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.all(10),
              elevation: 10,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(widget.imgfood),
                        // image: NetworkImage('http://www.thaifoodheritage.com/uploads/recipe_list/gallery/e3de5-jpg.jpeg'),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(widget.detailfood,
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    alignment: Alignment(0.0, 0.0),
                    child: Text(
                      ''
                      'คุณค่าทางโภชนาการ',
                      style: TextStyle(color: Colors.blue[900], fontSize: 20),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(widget.dietfood,
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),

                  Container(
                    height: 50,
                    width: 200,
                    alignment: Alignment(0.0, 0.0),
                    child: Text(
                      ''
                      'ส่วนผสม',
                      style: TextStyle(color: Colors.blue[900], fontSize: 20),
                    ),
                  ),

                  Container(
                    width: 300,
                    alignment: Alignment(-1.0, 0.0),
                    child: Text(widget.mashfood,
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    alignment: Alignment(0.0, 0.0),
                    child: Text(
                      ''
                      'วิธีการทำ',
                      style: TextStyle(color: Colors.blue[900], fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(widget.methodfood,
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                  Container(
                    child: Text(
                      ' ',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
