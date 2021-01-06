import 'package:find_house/ui/pages/search/search_page.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBarView.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/motiontabbar.dart';

import 'dashboard/main_dashboard.dart';

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({Key key, this.title}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  // int selectedPage = 0;
  // PageController pageController = PageController(initialPage: 0);
  MotionTabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = MotionTabController(initialIndex: 1, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MotionTabBar(
          labels: ["Account", "Home", "Transaction"],
          initialSelectedTab: "Home",
          tabIconColor: Colors.purple,
          tabSelectedColor: Colors.purple,
          textStyle: TextStyle(color: Colors.purple),
          onTabItemSelected: (int value) {
            print(value);
            setState(() {
              _tabController.index = value;
            });
          },
          icons: [Icons.search, Icons.home, Icons.menu],
        ),
        body: MotionTabBarView(
          controller: _tabController,
          children: <Widget>[
            Container(
              child: Center(
                child: SearchPage(),
              ),
            ),
            Container(
              child: Center(
                child: Dashboard(),
              ),
            ),
            Container(
              child: Center(
                child: Text("Account"),
              ),
            ),
          ],
        ));
  }
}
