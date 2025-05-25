import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackBoxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
        '🎧 This is the TrackBox Screen',
        style: GoogleFonts.lobster(
          fontSize: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
