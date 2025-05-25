import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_production/providers/service_provider.dart';
import 'package:music_production/screens/bottom_nav_screen.dart';
import 'package:music_production/widgets/service_tile.dart';
import 'package:provider/provider.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';


// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//   @override
//   State<StatefulWidget> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xffA242024),
//       appBar: AppBar(
//         backgroundColor: Color(0xffA90140),
//         title: Padding(
//           padding: const EdgeInsets.all(12),
//           child: SearchBar(
//             shape: WidgetStatePropertyAll(RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10),
//             )),
//             surfaceTintColor: WidgetStatePropertyAll(const Color(0xff2F2F39)),
//             backgroundColor: WidgetStatePropertyAll(const Color(0xff2F2F39)),
//             constraints: BoxConstraints(minHeight: 44, minWidth: 300),
//             leading: Icon(
//               Icons.search_rounded,
//               color: Colors.white,
//               size: 20,
//             ),
//             hintText: "Search Punjabi Lyrics",
//             trailing: [
//               Text(
//                 "| ",
//               ),
//               Icon(
//                 Icons.mic,
//                 color: Colors.white,
//                 size: 20,
//               )
//             ],
//           ),
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(left: 10, right: 20),
//             child: CircleAvatar(
//               backgroundColor: Colors.white,
//               radius: 34,
//               child: Icon(
//                 Icons.person_outline_sharp,
//                 size: 35,
//                 color: Colors.black,
//               ),
//             ),
//           )
//         ],
//       ),
//       body: Column(
//         children: [
//           Stack(children: [
//             Container(
//               height: 227,
//               width: 474,
//               decoration: BoxDecoration(
//                   color: Color(0xffA90140),
//                   gradient: LinearGradient(
//                       begin: Alignment.bottomCenter,
//                       end: Alignment.topCenter,
//                       colors: [
//                         Color.fromARGB(255, 105, 2, 40),
//                         Color(0xffA90140),
//                       ]),
//                   borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(10),
//                       bottomRight: Radius.circular(10))),
//             ),
//             SvgPicture.asset(
//               "assets/icons/Layer_1.svg",
//               height: 90,
//               width: 90,
//             ),
//             SvgPicture.asset(
//               "assets/icons/peyano.svg",
//               height: 90,
//               width: 90,
//             ),
//             Positioned(
//               width: 11,
//               height: 7,
//               child: GestureDetector(
//                 child: Container(
//                   height: 155,
//                   width: 54,
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(20)),
//                   child: Center(child: Text("Book now")),
//                 ),
//               ),
//             )
//           ]
//           )
//         ],
//       ),
//     );
//   }
// }



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();


}

class _HomeScreenState extends State<HomeScreen> {

    int _selectedIndex = 0;
    late PageController pageController;
  @override
  Widget build(BuildContext context) {
    
    final screenWidth = MediaQuery.of(context).size.width;
    final isTabletOrWeb = screenWidth > 600;

    @override
    void initState() {
      super.initState();
      pageController = PageController(initialPage: _selectedIndex);
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xffA90140),
        title: Padding(
          padding: const EdgeInsets.all(1),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: isTabletOrWeb ? 600 : double.infinity),
            child: SearchBar(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              surfaceTintColor: const WidgetStatePropertyAll(Color(0xff2F2F39)),
              backgroundColor: const WidgetStatePropertyAll(Color(0xff2F2F39)),
              shadowColor:  const WidgetStatePropertyAll(Color(0xffA90140)),
              constraints: const BoxConstraints(minHeight: 44, minWidth: 300),
              leading: const Icon(Icons.search_rounded, color: Colors.white, size: 20),
              hintText: "Search \"Punjabi Lyrics\"",
              trailing:  [
                Text("| ",
                    style: GoogleFonts.syne(
                        fontSize: 18,
                        color: Colors.white30,
                        fontWeight: FontWeight.w400)),
                Icon(Icons.mic, color: Colors.white, size: 20),
              ],
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 20),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 18,
              child: Icon(Icons.person_outline_sharp, size: 27, color: Colors.black),
            ),
          )
        ],
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: isTabletOrWeb ? 800 : double.infinity),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 220,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color.fromARGB(255, 105, 2, 40),
                          Color(0xffA90140),
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text(
                          "Claim your",
                          style:GoogleFonts.syne(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          )
                          
                        ),
                        Text(
                          "Free Demo",
                          style:GoogleFonts.lobster(
                            fontSize: 45,
                            color: Colors.white,
                          ) ,
                        ),
                         Text(
                          "for custom Music Production",
                          style: GoogleFonts.syne(
                            fontSize: 16,
                            color: Colors.white,
  
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          ),
                          child:  Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text("Book Now", style: GoogleFonts.syne(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: -35,
                    bottom: 20,
                    child: SvgPicture.asset("assets/icons/Layer_1.svg", height: 121, width: 121),
                  ),
                  Positioned(
                    right: -40,
                    bottom: 15,
                    child: SvgPicture.asset("assets/icons/peyano.svg", height: 135, width: 135),
                  ),
                ],
              ),
              const SizedBox(height: 20),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Hire hand-picked Pros for popular music services",
                    style: GoogleFonts.syne(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              ///service card widget
              Consumer(
                builder:(
                  BuildContext context,ServiceProvider serviceProvider, Widget? child) { 
                  
                return ServiceTile.serviceTile( serviceProvider) ;
               },
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavScreen()
      // ClipRRect(
      //   borderRadius: const BorderRadius.vertical(
      //   top: Radius.circular(10),
      //       ),
      //         child: WaterDropNavBar(
      //         backgroundColor: const Color(0xff1F1F29),
      //         waterDropColor: const Color.fromARGB(255, 255, 255, 255),
      //         selectedIndex: _selectedIndex,
      //         onItemSelected: (index) {
      //           setState(() {
      //             _selectedIndex = index;
                  
      //           });
      //           pageController.animateToPage(_selectedIndex,
      //         duration: const Duration(milliseconds: 100),
      //         curve: Curves.easeInCirc);
      //         },
      //      barItems: [
      //       BarItem(
      //         filledIcon: Icons.home,
      //         outlinedIcon: Icons.home_outlined,
      //       ),
      //       BarItem(
      //         filledIcon: Icons.article, 
      //         outlinedIcon: Icons.article_outlined,
      //       ),
      //       BarItem(
      //         filledIcon: Icons.music_note_rounded,
      //         outlinedIcon: Icons.music_note_outlined,
      //       ),
      //       BarItem(
      //         filledIcon: Icons.folder,
      //         outlinedIcon:Icons.folder_open,
      //       ),
      //         ],
      //       )

      //       ),
      
      
      //  BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: const Color(0xff1F1F29),
      //   selectedItemColor: Colors.white,
      //   unselectedItemColor: Colors.grey,
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
      //     BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "TrackBox"),
      //     BottomNavigationBarItem(icon: Icon(Icons.folder), label: "Projects"),
      //   ],
      // ),
    );
  }

}