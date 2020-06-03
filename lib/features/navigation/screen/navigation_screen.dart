import 'package:blochub/core/di/injector.dart';
import 'package:blochub/features/contribute/screen/contribute_screen.dart';
import 'package:blochub/features/explore/screen/explore_screen.dart';
import 'package:blochub/features/google_map/bloc/google_map_bloc.dart';
import 'package:blochub/features/inbox/screen/inbox_screen.dart';
import 'package:blochub/features/navigation/bloc/navigation_bloc.dart';
import 'package:blochub/features/profile/screen/profile_screen.dart';
import 'package:blochub/features/saved/screen/saved_screen.dart';
import 'package:blochub/shared/widgets/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blochub/shared/constants/app_constants.dart';

/// Main screen, loads after authentication screen
class NavigationScreen extends StatelessWidget {
  final _navigationBloc = getIt<NavigationBloc>();
  final _googleMapBloc = getIt<GoogleMapBloc>();

  void _onItemTapped(int index) {
    if (index == 0) {
      _navigationBloc.add(NavigationEvent.explore());
    }
    if (index == 1) {
      _navigationBloc.add(NavigationEvent.saved());
    }
    if (index == 2) {
      _navigationBloc.add(NavigationEvent.contribute());
    }
    if (index == 3) {
      _navigationBloc.add(NavigationEvent.inbox());
    }
    if (index == 4) {
      _navigationBloc.add(NavigationEvent.profile());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) => state.map(
        explore: (_) {
          _googleMapBloc.add(GoogleMapEvent.getCurrentLocationEvent());
          return _buildMainScreens(ExploreScreen(), state.index);
        },
        saved: (_) => _buildMainScreens(SavedScreen(), state.index),
        contribute: (_) => _buildMainScreens(ContributeScreen(), state.index),
        inbox: (_) => _buildMainScreens(InboxScreen(), state.index),
        profile: (_) => _buildMainScreens(ProfileScreen(), state.index),
      ),
    );
  }

  Scaffold _buildMainScreens(Widget screen, int currentIndex) {
    return Scaffold(
      body: screen,
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: _onItemTapped,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: ImageIcon(
              AssetImage('assets/explore.png'),
            ),
            title: Text(
              'Explore',
            ),
            activeColor: AppConstants.mainColor,
          ),
          BottomNavyBarItem(
            icon: ImageIcon(
              AssetImage('assets/saved.png'),
            ),
            title: Text(
              'Saved',
            ),
            activeColor: AppConstants.mainColor,
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.add_box,
              color: Colors.pink,
              size: 24.0,
            ),
            title: Text(
              'Contribute',
            ),
            activeColor: AppConstants.mainColor,
          ),
          BottomNavyBarItem(
            icon: ImageIcon(
              AssetImage('assets/inbox.png'),
            ),
            title: Text(
              'Inbox',
            ),
            activeColor: AppConstants.mainColor,
          ),
          BottomNavyBarItem(
            icon: ImageIcon(
              AssetImage('assets/profile.png'),
            ),
            title: Text(
              'Profile',
            ),
            activeColor: AppConstants.mainColor,
          ),
        ],
      ),
    );
  }
}
