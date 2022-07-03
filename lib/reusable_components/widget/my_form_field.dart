import 'package:flutter/material.dart';

class MyFormField extends StatelessWidget {
  Widget? widget;
  final TextEditingController ?controller;
  final TextInputType ?type;
  IconData? icon;
  final String ?label;
  final VoidCallback? validator;
  //VoidCallback? onTap;
  VoidCallback? onSubmit;
  ValueChanged<String>? onChange;
  VoidCallback? suffixPressed;
  VoidCallback? prefixPressed;
  bool? isClick = true;
  IconData? suffix;
  bool? isPassword = false;
  FocusNode? focusNode;
  MyFormField(
      {Key? key,
      this.widget,
       this.controller,
       this.type,
      this.icon,
       this.label,
       this.validator,
    //  this.onTap,
        this.onChange,
      this.onSubmit,
      this.prefixPressed,
      this.suffixPressed,
      this.focusNode,
      this.isClick,
      this.isPassword,
      this.suffix})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextFormField(
        controller: controller,
        keyboardType: type,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon),
          suffixIcon: suffix != null
              ? IconButton(onPressed: suffixPressed, icon: Icon(suffix))
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        validator: (value) {
          return '$value Must Not be empty';
        },
        // onTap: () {
        //   onTap!();
        // },
        onFieldSubmitted: (String value) {
          onSubmit!;
        },
        onChanged: onChange,
      ),
    );
  }
}
