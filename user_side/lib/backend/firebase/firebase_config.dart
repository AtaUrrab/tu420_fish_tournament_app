import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBcmk06RpGc26GppVrnrscLPxMCREk9I2U",
            authDomain: "tu420-tournaments-2759e.firebaseapp.com",
            projectId: "tu420-tournaments-2759e",
            storageBucket: "tu420-tournaments-2759e.appspot.com",
            messagingSenderId: "880320678653",
            appId: "1:880320678653:web:677ab4c6dceebc5eaa0c94",
            measurementId: "G-QETF0WJJG2"));
  } else {
    await Firebase.initializeApp();
  }
}
