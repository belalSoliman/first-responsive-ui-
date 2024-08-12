import 'package:first_responsive/widget/dashbord.dart';
import 'package:flutter/material.dart';

import 'widget/container.dart';
import 'widget/list_tablets.dart';
import 'widget/list_view_b.dart';

class FlutterWindow extends StatefulWidget {
  const FlutterWindow({super.key});

  @override
  State<FlutterWindow> createState() => _FlutterWindowState();
}

class _FlutterWindowState extends State<FlutterWindow> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffoldKey,
        drawer: const Dashbord(),
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth <= 600) {
                    return SizedBox(
                      height:
                          400, // Adjust height according to your layout needs
                      child: CustomScrollView(
                        slivers: <Widget>[
                          ContainerView(), // Directly use ContainerView which returns a SliverGrid
                        ],
                      ),
                    );
                  } else {
                    return ListTablets(); // This already returns a RenderBox-compatible widget
                  }
                },
              ),
            ),
            ListVVs(),
          ],
        ),
      ),
    );
  }
}
