import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shopping/widget/sub_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

List categories = [
  "images/headphone_icon.png",
  "images/laptop.png",
  "images/watch.png",
  "images/TV.png",
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hey, Subash',
                      style: AppWidget.boldTextFeildStyle(),
                    ),
                    Text(
                      "Good Morning",
                      style: AppWidget.lightTextFeildStyle(),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "images/boy.png",
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Products",
                  hintStyle: AppWidget.lightTextFeildStyle(),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: AppWidget.SemiboldTextFeildStyle(),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: Color(0xFFfd6f3d),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Container(
                  height: 145.0,
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFfd6f3d),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                      child: Text(
                    "All",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 170.0,
                    child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: categories.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CategoryTile(image: categories[index]);
                        }),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Producst",
                  style: AppWidget.SemiboldTextFeildStyle(),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: Color(0xFFfd6f3d),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 260,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Image.asset(
                          'images/headphone2.png',
                          height: 175,
                          width: 175,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Headphone",
                          style: AppWidget.SemiboldTextFeildStyle(),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$110',
                              style: TextStyle(
                                color: Color(0xFFfd6f3d),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 45,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFFfd6f3d),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Image.asset(
                          'images/watch2.png',
                          height: 175,
                          width: 175,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Apple Watch",
                          style: AppWidget.SemiboldTextFeildStyle(),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$350',
                              style: TextStyle(
                                color: Color(0xFFfd6f3d),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 45,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFFfd6f3d),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Image.asset(
                          'images/laptop2.png',
                          height: 175,
                          width: 175,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Laptop",
                          style: AppWidget.SemiboldTextFeildStyle(),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$110',
                              style: TextStyle(
                                color: Color(0xFFfd6f3d),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 45,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFFfd6f3d),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  String image;
  CategoryTile({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.only(left: 15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            height: 55,
            width: 55,
            fit: BoxFit.cover,
          ),
          Icon(Icons.arrow_forward),
        ],
      ),
    );
  }
}
