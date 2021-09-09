import 'package:flutter/material.dart';
import 'package:ui_simple_fashion_shop/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
    required this.tags,
    required this.description,
    required this.press,
  }) : super(key: key);

  final String title;
  final String image;
  final int price;
  final String tags;
  final String description;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 35),
        height: 400,
        width: 250,
        child: Stack(
          children: [
            // Big Light Background
            Positioned(
              right: 0,
              bottom: 0,
              left: 25,
              top: 25,
              child: Container(
                height: 400,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: tPrimaryColor.withOpacity(.06),
                ),
              ),
            ),
            // Rounded Background
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: tPrimaryColor.withOpacity(.5),
                ),
              ),
            ),
            // Food Image
            Positioned(
              top: 0,
              left: 5,
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            // Price
            Positioned(
              right: 20,
              top: 80,
              child: Text(
                "\$$price",
                style: TextStyle(
                  color: tPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Positioned(
              top: 190,
              left: 40,
              child: Container(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      description,
                      maxLines: 5,
                      style: TextStyle(
                        color: tTextColor.withOpacity(.65),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(tags),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
