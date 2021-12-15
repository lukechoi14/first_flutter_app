import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final Color borderColor;
  final Color? bgColor;
  final double? width, height, size;
  final int index;
  // ignore: use_key_in_widget_constructors
  const IconContainer({this.borderColor=Colors.transparent,
  this.bgColor,required this.index,this.width,this.height,this.size});

  @override
  Widget build(BuildContext context) {
    List<IconData> _icons = [
      Icons.event_note,
      Icons.work,
      Icons.umbrella,
      Icons.add_location,
      Icons.medical_services,
      Icons.cast_for_education_outlined,
      Icons.construction,
      Icons.flight
    ];
    return Container(
      width: width,
      height: height,
      child: Icon(
        _icons[index], size: size,color: Colors.white,
      ),
      decoration: BoxDecoration(
        color:bgColor,
        shape: BoxShape.circle,
        border:borderColor==Colors.transparent?
            Border.all(width:5,color:Colors.transparent):
            Border.all(width:5,color:borderColor)
      ),

    );
  }
}
