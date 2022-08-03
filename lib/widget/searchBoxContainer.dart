
import 'package:flutter/material.dart';
import 'package:job_search_app/components/mySearchField.dart';

class SearchBoxContainer extends StatelessWidget {
  const SearchBoxContainer({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        width: width,
        margin: const EdgeInsets.fromLTRB(6.0, 0.0, 20.0, 20.0),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          image: DecorationImage(
            image: AssetImage("assets/images/search_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Fast Search",
              style: TextStyle(
                fontSize: height * 0.04,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "You can search quickly for \nthe job you want",
              style: TextStyle(
                fontSize: height * 0.03,
                color: Colors.white60,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            MySearchField(),
          ],
        ),
      ),
    );
  }
}