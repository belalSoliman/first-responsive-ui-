import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class ListVVs extends StatelessWidget {
  const ListVVs({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
            height: 60,
          );
        });
  }
}
