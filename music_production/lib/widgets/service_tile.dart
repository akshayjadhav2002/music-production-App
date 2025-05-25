import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Corrected import
import 'package:google_fonts/google_fonts.dart';
import 'package:music_production/providers/service_provider.dart';
import 'package:music_production/models/service_detail.dart';
import 'package:music_production/screens/service_detail_screen.dart';

class ServiceTile {
  static Widget serviceTile(ServiceProvider serviceProvider) {
    return FutureBuilder<List<ServiceDetail>?>(
      future: serviceProvider.fetchServiceDetail(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No data found'));
        } else {
          final services = snapshot.data!;
          return ListView.builder(
            shrinkWrap: true,
            itemCount: services.length,
            itemBuilder: (context, index) {
              final data = services[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 70,
                        width: double.infinity,
                        child: Image.asset(
                          data.backgroundImage,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: const Color(0xD92F2F39),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ListTile(
                          leading: SvgPicture.asset(data.iconPath,
                              height: 50, width: 50),
                          title: Text(data.title,
                              style: GoogleFonts.syne(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          subtitle: Text(
                            data.subTitle,
                            style: GoogleFonts.syne(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                          trailing: const Icon(Icons.arrow_right,
                              color: Colors.white, size: 33),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ServiceDetailScreen(
                                  serviceName: data.title,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
