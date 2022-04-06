import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const actionColor = Color(0xFFe54140);
class Category_Box extends StatelessWidget {
  Category_Box({ Key? key, required this.data, this.isSelected = false, this.onTap, this.selectedColor = actionColor }) : super(key: key);
  final data;
  final Color selectedColor;
  final bool isSelected;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return 
      GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              padding:  EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: isSelected ? Color(0xFFf77080) : Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ],
                shape: BoxShape.circle
              ),  
              child: SvgPicture.asset(data["icon"], color: isSelected ? selectedColor : Color(0xFF333333), width: 30, height: 30,)
            ),
            SizedBox(height: 10,),
            Text(data["name"], maxLines: 1, overflow: TextOverflow.fade, 
              style: TextStyle(color: Color(0xFF333333), fontWeight: FontWeight.w500),
            )
          ],
        ),
      )
      ;
  }
}