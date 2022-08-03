import 'package:flutter/material.dart';

class ListContainer extends StatefulWidget {
  ListContainer({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  State<ListContainer> createState() => _ListContainerState();
}

class _ListContainerState extends State<ListContainer> {
  var selectedMenu = 0;

  final _tagList = [
    'All',
    '⚡ Popular',
    '⭐ Featured',
    'All',
    'Popular',
    'Featured',
    'All',
    'Popular',
    'Featured'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        width: widget.width,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 10.0, 0.0, 10.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _tagList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedMenu = index;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 0.8,
                          ),
                          margin: const EdgeInsets.only(right: 16.0),
                          decoration: BoxDecoration(
                            color: selectedMenu == index
                                ? Color.fromARGB(172, 62, 235, 238)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: selectedMenu == index
                                  ? Color(0xFFD8F3F3).withOpacity(0.8)
                                  : Color.fromARGB(172, 62, 235, 238),
                            ),
                          ),
                          child: Text(
                            "${_tagList[index]}",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 10.0, 0.0, 10.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _tagList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 10.0,
                        ),
                        margin: const EdgeInsets.only(right: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        width: widget.width * 0.70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF5F7FB),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Airbnb innc,",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 83, 79, 79),
                                    fontSize: 18.0,
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.star,
                                  color: Colors.black45,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Text(
                              "VP Business Intelegence",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5,
                              ),
                            ),
                            SizedBox(
                              height: 12.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.amber,
                                  size: 28.0,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "50 Herminia Stracenue\nCanada",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black45),
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 90.0,
            ),
          ],
        ),
      ),
    );
  }
}
