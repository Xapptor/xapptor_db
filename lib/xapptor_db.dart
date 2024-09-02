import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class XapptorDB {
  static late FirebaseApp current_app;
  static late String current_database_id;

  static init({
    required FirebaseApp app,
    String? database_id,
  }) {
    current_app = app;
    current_database_id = database_id ?? '(default)';
  }

  static FirebaseFirestore get instance {
    return FirebaseFirestore.instanceFor(
      app: current_app,
      databaseId: current_database_id,
    );
  }
}
