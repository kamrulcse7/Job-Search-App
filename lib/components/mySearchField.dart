
import 'package:flutter/material.dart';

class MySearchField extends StatelessWidget {
  const MySearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // obscureText: _isObscure,
      // controller: textcontroller,
      decoration: InputDecoration(
        hintText: "Search",
        hintStyle: TextStyle(
          color: Color(0xFF9c9c9d),
          fontSize: 18.0,
          fontWeight: FontWeight.w400,
        ),
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Padding(
          padding:
              const EdgeInsets.only(left: 16.0, right: 10.0),
          child: Icon(
            Icons.search_rounded,
            color: Color(0xFF9c9c9d),
            size: 32.0,
          ),
        ),
        labelStyle:
            TextStyle(fontSize: 20.0, color: Colors.black87),
        contentPadding: EdgeInsets.symmetric(
            vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.transparent, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.transparent, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
    );
  }
}
