import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onClick;
  final double? height;
  double? width;
  final Color ?buttonColor;
  final double ?radius;
  final String text;
  final Color ?textColor;
  MyButton(
      {Key? key,
      required this.onClick,
       this.height,
      this.width = double.infinity,
       this.buttonColor,
       this.radius,
     required  this.text,
       this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(3),
      ),
      height: 50,
      child: MaterialButton(
        onPressed: () {
          onClick();
        },
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: textColor, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
