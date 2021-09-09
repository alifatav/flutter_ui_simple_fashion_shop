import 'package:flutter/material.dart';
import 'package:ui_simple_fashion_shop/constants.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({
    Key? key,
    this.active = false,
    required this.title,
  }) : super(key: key);

  final String title;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Text(
        title,
        style: TextStyle(
          color: active ? tPrimaryColor : tTextColor.withOpacity(.4),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
