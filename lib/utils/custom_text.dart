import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  CustomText(
      {required this.name,
      this.size,
      this.familyFont = "Poppins",
      this.fontWeight = FontWeight.w500,
      this.alignment,
      this.fontStyle,
      this.height,
      this.color = Colors.black,
      super.key});
  final String name;
  double? size;
  String? familyFont;
  FontWeight? fontWeight;
  TextAlign? alignment;
  double? height;
  FontStyle? fontStyle;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      textAlign: alignment,
      maxLines: 2,
      style: TextStyle(
        fontSize: size,
        height: height,
        fontFamily: familyFont,
        fontStyle: fontStyle,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
