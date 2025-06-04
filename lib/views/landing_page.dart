import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Column(
        children: [
          // Tab bar
          Container(
            color: Colors.black,
            child: const TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: "Following"),
                Tab(text: "For You"),
              ],
            ),
          ),

          // Tab views
          Expanded(
            child: TabBarView(
              children: [
                Center(child: Text("Content for Tab 1")),
                Center(child: Text("Content for Tab 2")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
