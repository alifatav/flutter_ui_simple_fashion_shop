import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_simple_fashion_shop/constants.dart';
import 'package:ui_simple_fashion_shop/details_screen.dart';
import 'package:ui_simple_fashion_shop/widgets/category_title.dart';
import 'package:ui_simple_fashion_shop/widgets/product_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Simple Fashion Shop',
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: tWhiteColor,
        primaryColor: tPrimaryColor,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          button: TextStyle(fontWeight: FontWeight.bold),
          headline2: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          bodyText1: TextStyle(color: tTextColor),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: tPrimaryColor.withOpacity(.26),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: tPrimaryColor,
          ),
          child: SvgPicture.asset("assets/icons/bag.svg"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 50),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset("assets/icons/menu.svg", height: 11),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Easy way to find your outfit",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryTitle(title: "All", active: true),
                CategoryTitle(title: "Shirt"),
                CategoryTitle(title: "Pants"),
                CategoryTitle(title: "Footwear"),
                CategoryTitle(title: "Accessories"),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: tBorderColor),
            ),
            child: SvgPicture.asset("assets/icons/search.svg"),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ProductCard(
                  title: "Converse Premium",
                  image: "assets/images/pixabay-footwear.png",
                  price: 25,
                  tags: "#footwear #sneaker",
                  description:
                      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsScreen();
                      }),
                    );
                  },
                ),
                ProductCard(
                  title: "High Heels Original",
                  image: "assets/images/pixabay-footwear03.png",
                  price: 35,
                  tags: "#footwear #woman",
                  description:
                      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsScreen();
                      }),
                    );
                  },
                ),
                ProductCard(
                  title: "Lorem Ipsum Dolor",
                  image: "assets/images/pixabay-hat.png",
                  price: 15,
                  tags: "#accessories",
                  description:
                      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsScreen();
                      }),
                    );
                  },
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
