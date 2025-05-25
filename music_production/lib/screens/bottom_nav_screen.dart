import 'package:flutter/material.dart';
import 'package:music_production/providers/navigation_provider.dart';
import 'package:music_production/screens/home_screeen.dart';
import 'package:music_production/screens/news_screen.dart';
import 'package:music_production/screens/projects_screen.dart';
import 'package:music_production/screens/trackbox_screen.dart';
import 'package:provider/provider.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
 

  final List<Widget> _screens = [
    HomeScreen(),
    NewsScreen(),
    TrackBoxScreen(),
    ProjectsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    var navProvider =Provider.of<NavigationProvider>(context,listen: true);
    return Scaffold(
      backgroundColor: Colors.black,
      body: _screens[navProvider.currentIndex],
      bottomNavigationBar:   ClipRRect(
        borderRadius: const BorderRadius.vertical(
        top: Radius.circular(10),
            ),
              child: WaterDropNavBar(
              bottomPadding: 20,
              backgroundColor: const Color(0xff1F1F29),
              waterDropColor: const Color.fromARGB(255, 255, 255, 255),
              selectedIndex: navProvider.currentIndex,
              onItemSelected: (index) {
                navProvider.onTap(index);
              //   pageController.animateToPage(_selectedIndex,
              // duration: const Duration(milliseconds: 100),
              // curve: Curves.easeInCirc);
              },
           barItems: [
            BarItem(
              filledIcon: Icons.home,
              outlinedIcon: Icons.home_outlined,
            ),
            BarItem(
              filledIcon: Icons.article, 
              outlinedIcon: Icons.article_outlined,
            ),
            BarItem(
              filledIcon: Icons.music_note_rounded,
              outlinedIcon: Icons.music_note_outlined,
            ),
            BarItem(
              filledIcon: Icons.folder,
              outlinedIcon:Icons.folder_open,
            ),
              ],
            )

            ),
    );
  }
}
