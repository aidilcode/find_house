part of 'main_dashboard.dart';

class BodyDashboard extends StatelessWidget {
  const BodyDashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Stack(
        children: <Widget>[
          SizedBox(height: 100),
          Container(
            height: 100,
            color: Colors.black,
          ),
          SliderAdvertise(),
          SizedBox(height: kDefaultPadding / 2),
          // Slider(onChanged: ,),
          // SearchBox(onChanged: (value) {}),
          // CustomScrollView(
          //   slivers: <Widget>[
          //     SliverAppBar(
          //       backgroundColor: Colors.purple[300],

          //       elevation: 0,
          //       pinned: true,
          //       floating: true,
          //       title: CategoryList(),
          //       toolbarHeight: 50,
          //       // flexibleSpace: Padding(
          //       //     padding: EdgeInsets.only(left: 24),
          //       //     child: Text('Find Your Home',
          //       //         style: TextStyle(
          //       //             fontSize: 25,
          //       //             fontWeight: FontWeight.bold,
          //       //             color: Colors.white))),
          //     ),
          //     SliverGrid(
          //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 2,
          //       ),
          //       delegate: SliverChildBuilderDelegate(
          //           (BuildContext context, int index) {
          //         return new Container(
          //           color: _randomColor(index),
          //           height: 200.0,
          //         );
          //       }),
          //     ),
          //   ],
          // ),
          // CategoryList(),
          SizedBox(height: kDefaultPadding / 2),
          // Expanded(
          //   child: Stack(
          //     children: <Widget>[
          //       // Our background
          //       Container(
          //         margin: EdgeInsets.only(top: 70),
          //         decoration: BoxDecoration(
          //           color: kWhiteColor,
          //           borderRadius: BorderRadius.only(
          //             topLeft: Radius.circular(10),
          //             topRight: Radius.circular(10),
          //           ),
          //         ),
          //       ),
          //       ListView.builder(
          //         // here we use our demo procuts list
          //         itemCount: products.length,
          //         itemBuilder: (context, index) => ProductCard(
          //           itemIndex: index,
          //           product: products[index],
          //           press: () {
          //             // Navigator.push(
          //             //   context,
          //             //   // MaterialPageRoute(
          //             //   //   builder: (context) => DetailsScreen(
          //             //   //     product: products[index],
          //             //   //   ),
          //             //   // ),
          //             // );
          //           },
          //         ),
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
