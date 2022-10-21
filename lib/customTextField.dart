import 'package:flutter/cupertino.dart';

class MyBtn extends StatelessWidget {

  double height;
  double width;
  Color color;

   MyBtn({Key? key,required this.height,required this.width,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      height: height,

      width:width ,
      decoration: BoxDecoration(
        color: color
      ),



    );
  }
}
