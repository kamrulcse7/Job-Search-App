import 'package:flutter/material.dart';
import 'package:job_search_app/components/appBackground.dart';
import 'package:job_search_app/pages/home/homePageContents.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: [
            AppBackground(width: width, height: height),
            HomePageContents(height: height, width: width),
          ],
        ),
      ),
    );
  }
}
