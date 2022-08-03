
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: const EdgeInsets.only(top: 20.0, right: 14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome Home",
                  style: TextStyle(
                    fontSize: width * 0.06,
                    color: Color(0xFF9c9c9d),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 05.0,
                ),
                Text(
                  "Annie Bryant",
                  style: TextStyle(
                    fontSize: width * 0.09,
                    color: Color(0xFF2e2e30),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  transform: Matrix4.rotationZ(100.0),
                  child: Stack(
                    children: [
                      Icon(
                        Icons.notifications_none_rounded,
                        size: 40.0,
                        color: Color(0xFF9c9c9d),
                      ),
                      Positioned(
                        right: 0,
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: Color(0xFFde6462),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                CircleAvatar(
                  radius: width * 0.08,
                  backgroundColor: Colors.white,
                  backgroundImage:
                      AssetImage("assets/images/avatar.png"),
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
