import 'package:flutter/material.dart';
import 'package:shopping/pages/Order.dart';
import 'package:shopping/pages/home.dart';
import 'package:shopping/pages/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class FooterNav extends StatefulWidget {
  const FooterNav({super.key});

  @override
  State<FooterNav> createState() => _FooterNavState();
}

class _FooterNavState extends State<FooterNav> {
  late List<Widget> pages;
  late Home home;
  late Order order;
  late Profile profile;
  int currentTabIndex = 0;

  @override
  void initState() {
    home = Home();
    order = Order();
    profile = Profile();
    pages = [home, order, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Color(0xfff2f2f2),
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
            size: 40,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
            size: 40,
          ),
          Icon(
            Icons.person_outlined,
            color: Colors.white,
            size: 40,
          ),
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
