import 'package:flutter/material.dart';

class TiextFormFilds extends StatelessWidget {
  TiextFormFilds(
      {Key? key,
      this.hinttext,
      this.icon,
      this.controller,
      this.keyboardType,
      this.num})
      : super(key: key);

  final String? hinttext;
  final IconData? icon;
  final int? num;
  TextEditingController? controller;
  TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: num,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(25.0),
        //   borderSide: BorderSide(
        //     color: Colors.red,
        //     width: 2.0,
        //   ),
        // ),
        hoverColor: Colors.orange[200],
        fillColor: Colors.orange[200],
        hintStyle: TextStyle(
            color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 12),
        hintText: hinttext,
        // icon: Icon(
        //   icon,
        //   color: Colors.black,
        // ),
      ),
    );
  }
}
