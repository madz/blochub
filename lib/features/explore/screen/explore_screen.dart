import 'package:blochub/features/google_map/screen/google_map_screen.dart';
import 'package:flutter/material.dart';

///Explore Screen
class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GoogleMapScreen(),
      ),
    );
  }
}
