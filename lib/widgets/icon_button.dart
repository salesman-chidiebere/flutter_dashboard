import 'package:flutter/material.dart';
class CiclularCard extends StatelessWidget {
  final IconData iconData;
  final Color iconColor;
  final double iconSize;
  final double textSize;
  final String title;
  const CiclularCard({required this.iconData, required this.iconColor,
    required this.iconSize, required this.textSize,required this.title,});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
          child: Container(
            width: 60,
            height: 40,
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(iconData, size: iconSize, color: iconColor,),
                SizedBox(height: 5,),
                Text(title, style: TextStyle(color: iconColor, fontSize: textSize),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}