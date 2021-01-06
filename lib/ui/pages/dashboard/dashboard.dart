part of 'main_dashboard.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.purple, Colors.purpleAccent])),
        child: Body(),
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.purpleAccent],
        ),
      ),
    ),
    automaticallyImplyLeading: false,
    elevation: 0,
    toolbarHeight: 50,
    centerTitle: false,
    title: Text('Dashboard'),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset(
          "assets/heart.svg",
          color: Colors.white,
          height: 25,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset(
          "assets/user.svg",
          color: Colors.white,
          height: 25,
        ),
        onPressed: () {},
      ),
    ],
  );
}
