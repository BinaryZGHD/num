

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:num/camera/cameraapp.dart';
import 'package:num/camera/picamara.dart';
import 'package:num/class_data/data.dart';
import 'package:num/class_data/fooditem.dart';
import 'package:num/class_data/listFoodMenu.dart';
import 'package:num/const_app/categoryBox.dart';
import 'package:num/feature_display_beer/beer_screen.dart';
import 'package:num/page_sreen/pageCustomDialogBox.dart';
import 'package:num/page_sreen/pageDialogs.dart';
import 'package:num/page_sreen/pageMunuDetail.dart';


class Page_Central_Home extends StatelessWidget {
  const Page_Central_Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyPageCentral(
      title: "เมนูอาหารห้ามพลาด",
    );
  }
}

class MyPageCentral extends StatefulWidget {
  MyPageCentral({Key? key, required this.title}) : super(key: key);

  final String title;
  String changeTitle = "";

  @override
  State<MyPageCentral> createState() => _MyPageCentralState();
}

class _MyPageCentralState extends State<MyPageCentral> {
  int _counter = 0;

  void onTabTapped(int index) {
    setState(() {
      _counter = index;
    });
  }

  // Explicit

  // Method

  static const textColor = Color(0xFF333333);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title:
      //   // Text(widget.changeTitle),
      //   const Text("5 เมนูอาหารภาคกลางต้องห้ามพลาด"),
      //   actions: [LiteButton()],
      // ),
      // backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(
            fontFamily: 'Kanit',
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: SvgPicture.asset(
        //     'assets/svg/menu.svg',
        //     height: 20,
        //     width: 20,
        //   ),
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'นายสมชาย สมบัติ',
                style: TextStyle(
                  fontFamily: 'Kanit',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              accountEmail: Text(
                '62030340@Admin.com',
                style: TextStyle(
                  fontFamily: 'Kanit',
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/BUS2.jpg'),
              ),
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
              ),

            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => class_Dialogs())
                );
              },
              child: Container(
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  title: Text(
                    'หน้าหลัก',
                    style: TextStyle(
                      fontFamily: 'Kanit',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DisplayBeerScreen()));
              },
              child: Container(
                child: ListTile(
                  leading: Icon(
                    Icons.fastfood,
                    color: Colors.black,
                  ),
                  title: Text(
                    'ร้านอาหาร',
                    style: TextStyle(
                      fontFamily: 'Kanit',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => cameraapp()));
              },
              child: Container(
                child: ListTile(
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                  title: Text(
                    'ตะกร้าสินค้า',
                    style: TextStyle(
                      fontFamily: 'Kanit',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: Text(
                  'ข้อมูลส่วนตัว',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                title: Text(
                  'ตั้งค่า',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.black,
                ),
                title: Text(
                  'ออกจากระบบ',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),




      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            getIcon_Bitcoin(),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
              child: Text("Thai Food",
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  )),
            ),
            getFood_Item(),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Menu",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF333333)),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 14, color: Color(0xFF3E4249)),
                  ),
                ],
              ),
            ),
            getFood_Card(),
          ]),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _counter,
        onTap: onTabTapped,
        unselectedItemColor: Colors.blueGrey,
        showUnselectedLabels: true,
        fixedColor: Colors.black87,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  int selectedCollection = 0;
  getIcon_Bitcoin() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              categories.length,
              (index) => Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Category_Box(
                    selectedColor: Colors.white,
                    data: categories[index],
                    onTap: () {
                      setState(() {
                        selectedCollection = index;
                      });
                    },
                  )))),
    );
  }

  getFood_Item() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              listFood.length,
              (index) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Food_Item(
                    data: listFood[index],
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Page_Menu_Detail(
                                  data: listFood[index],
                                  nfood: '${index + 1}. ' + menu[index].nfood,
                                  imgf: menu[index].img,
                                  detailf: menu[index].detailfood,
                                  dietf: menu[index].dietfood,
                                  mashf: menu[index].mashfood,
                                  methodf: menu[index].methodfood)));
                    },
                  )))),
    );
  }

  getFood_Card() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
      scrollDirection: Axis.horizontal,
      child: Column(
          children: List.generate(
              listFood.length,
              (index) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Food_Item(
                    data: listFood[index],
                    onTap: () {
                      showDialog(context: context,
                          builder: (context) => Custom_Dialog_Box(
                              id: '${index}',
                              img: menu[index].img,
                              title: '${index + 1}. ' + menu[index].nfood,
                              descriptions: menu[index].subnfood,
                              dietf: '${menu[index].dietfood}',
                              methodf: '${menu[index].methodfood}',
                              imgf: '${menu[index].img}',
                              detailf: '${menu[index].detailfood}',
                              nfood: '${menu[index].nfood}',
                              text: "Okay",
                              mashf: '${menu[index].mashfood}'
                          )

                      );
                    },
                  )))),
    );
  }
}
