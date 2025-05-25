import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:music_production/models/service_detail.dart';

class ServiceProvider extends ChangeNotifier {
  List<ServiceDetail> listServiceCard = [];

 Future<List<ServiceDetail>?> fetchServiceDetail() async {
  try {
    listServiceCard.clear(); // Clears old data before fetching new data
    final coll = await FirebaseFirestore.instance
        .collectionGroup('service-card')
        .get();

    List<QueryDocumentSnapshot<Map<String, dynamic>>> docSnapshotList =
        coll.docs;

    if (docSnapshotList.isEmpty) {
      log("Document is Empty");
    } else {
      for (var element in docSnapshotList) {
        listServiceCard.add(ServiceDetail.fromMap(element.data()));
      }
      log("${coll.docs}");
      log("${coll.docs.first.data()}");
      return listServiceCard;
    }
  } catch (e) {
    log("Error fetching service detail: $e");
    return null;
  }
  notifyListeners();
  return null;
}

}
