import 'package:flutter/material.dart';
import 'package:flutter_facebook/config/palette.dart';
import 'package:flutter_facebook/data/data.dart';
import 'package:flutter_facebook/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              "facebook",
              style: TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            // automaticallyImplyLeading: true,
            centerTitle: false,
            floating: false,
            actions: [
              CircleButton(
                icon: Icons.search,
                iconSize: 30,
                onPressed: () {
                  print("Search");
                },
              ),
              CircleButton(
                icon: MdiIcons.facebookMessenger,
                iconSize: 30,
                onPressed: () {
                  print("Search");
                },
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser),
          ),
          SliverToBoxAdapter(
            child: Rooms(onlineUsers: onlineUsers),
          ),
        ],
      ),
    );
  }
}
