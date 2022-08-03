import 'package:flutter/material.dart';
import 'package:job_search_app/widget/myAppBar.dart';
import 'package:job_search_app/widget/searchBoxContainer.dart';


class HomePageContents extends StatelessWidget {
  const HomePageContents({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          padding: EdgeInsets.only(left: 14.0),
          child: Column(
            children: [
              MyAppBar(width: width),
              SearchBoxContainer(width: width, height: height),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.green[50],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
