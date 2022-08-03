import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFffffff),
                    Color(0xFFF6F6F6),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Color.fromARGB(179, 234, 232, 232),
            ),
          ),
        ],
      ),
    );
  }
}
