part of 'main_dashboard.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int selectedIndex = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          SliderAdvertise(),
          // Slider(onChanged: ,),
          // SearchBox(onChanged: (value) {}),
          CustomTabBar(
            titles: ['All', 'Type32', 'Type45', 'Type56'],
            selectedIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: [
                // Our background
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                ),

                BlocBuilder<ProductCubit, ProductState>(builder: (_, state) {
                  if (state is ProductLoaded) {
                    List<Product> products = state.products
                        .where((element) =>
                            element.types.contains((selectedIndex == 0)
                                ? ProductType.tipe_32
                                : (selectedIndex == 1)
                                    ? ProductType.type_45
                                    : (selectedIndex == 2)
                                        ? ProductType.type_56
                                        : ProductType.type_86))
                        .toList();

                    return ListView.builder(
                      // here we use our demo procuts list
                      itemCount: products.length,
                      itemBuilder: (context, index) => ProductCard(
                        itemIndex: index,
                        product: products[index],
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPage(
                                product: mockProducts[index],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  } else {
                    return Text('errro');
                    // List<Product> products = mockProducts
                    //     .where((element) =>
                    //         element.types.contains((selectedIndex == 0)
                    //             ? ProductType.tipe_32
                    //             : (selectedIndex == 1)
                    //                 ? ProductType.type_45
                    //                 : (selectedIndex == 2)
                    //                     ? ProductType.type_56
                    //                     : ProductType.type_86))
                    //     .toList();

                    // return ListView.builder(
                    //   // here we use our demo procuts list
                    //   itemCount: products.length,
                    //   itemBuilder: (context, index) => ProductCard(
                    //     itemIndex: index,
                    //     product: products[index],
                    //     press: () {
                    //       Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //           builder: (context) => DetailPage(
                    //             product: mockProducts[index],
                    //           ),
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // );
                  }
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
