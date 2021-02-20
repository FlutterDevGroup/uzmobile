import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseInitialize {
  static FirebaseApp app;
  static FirebaseDatabase database;

  Future<void> initializeFirebase() async {
    app = await Firebase.initializeApp(
      name: 'uzmobile',
      options: FirebaseOptions(
        appId: "1:1087274318748:android:1d82ca6fa9201c6a062659",
        apiKey: "AIzaSyBnXlRv3kCs9tQRZkrtGvgO5sZ-TqxArmY",
        messagingSenderId: 'uzmobile2__app',
        projectId: "uzmobile2",
        databaseURL: "https://uzmobile2-default-rtdb.firebaseio.com/",
      ),
    );
    database = FirebaseDatabase(app: app);
    await database.setPersistenceEnabled(true);
    await database.setPersistenceCacheSizeBytes(2000000);
  }
}