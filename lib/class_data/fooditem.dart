
import 'package:flutter/material.dart';


class Food_Item extends StatelessWidget {
  Food_Item({ Key? key, required this.data, this.onTap}) : super(key: key);
  final data;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.all(3),
          width: 320,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 1), // changes position of shadow
              ),
            ],
          ),



          child: Card(
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  // child: Image.asset('assets/Tom.png', width: 100.0, height: 100.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:  AssetImage(data["image"]),

                      // image: NetworkImage(food.urlImage),
                    ),
                  ),
                ),
                // Container( height: 80, child: Image.asset("assets/images/Tom_Yum_Goong_C.jpg"),),
                // CustomImage(data["image"],
                //
                //   radius: 15,
                //   height: 80,
                // ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data["name"], maxLines: 1, overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Color(0xFF333333), fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 5,),
                    Text(data["price"], style: TextStyle(fontSize: 14, color: Color(0xFF333333)),),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Icon(Icons.schedule_rounded, color: Color(0xFF8A8989), size: 14,),
                        SizedBox(width: 2,),
                        Text(data["duration"], style: TextStyle(fontSize: 12, color: Color(0xFF8A8989)),),
                        SizedBox(width: 20,),
                        Icon(Icons.star, color: Color(0xFFf5ba92), size: 14,),
                        SizedBox(width: 2,),
                        Text(data["review"], style: TextStyle(fontSize: 12, color: Color(0xFF8A8989)),)
                      ],
                    )
                  ],
                )
              ],
            ),
          )

      ),

    );
  }
}