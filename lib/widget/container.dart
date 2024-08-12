import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemCount: 4,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              width: 200,
              height: 200,
            ),
          );
        });
  }
}
