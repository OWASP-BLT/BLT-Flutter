import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionTextField extends StatelessWidget {
  final TextEditingController controller;
  final List<String> emojis;
  final EdgeInsets insets;
  final FocusNode? focusNode;

  final Key? containerKey;

  const DescriptionTextField({
    Key? key,
    required this.controller,
    required this.insets,
    this.emojis = const [],
    this.focusNode,
    this.containerKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: containerKey,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "This field is required";
          }
          return null;
        },
        maxLines: 5,
        decoration: InputDecoration(
          hintText: "Enter a description of the issue here ...",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
        style: GoogleFonts.aBeeZee(
          textStyle: TextStyle(
            fontSize: 12,
          ),
        ),
        cursorColor: Color(0xFFDC4654),
      ),
    );
  }
}
