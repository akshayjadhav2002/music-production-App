import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
        '📰 This is the News Screen',
        style: GoogleFonts.lobster(
                            fontSize: 25,
                            color: Colors.white,
                          ) ,
      ),
    );
  }
}
