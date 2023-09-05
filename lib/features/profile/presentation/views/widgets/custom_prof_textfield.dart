import 'package:flutter/material.dart';

class CustomProfTextField extends StatelessWidget {
  const CustomProfTextField(
      {super.key, required this.headtext, required this.hinttext});

  final String headtext;
  final String hinttext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headtext,
            style: TextStyle(
              color: Color(0xff808194),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 44,
            child: TextFormField(
              textAlignVertical: TextAlignVertical.bottom,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff2A2B2E),
              ),
              decoration: InputDecoration(
                hintText: hinttext,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Color(0xff808194),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Colors.cyan,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
