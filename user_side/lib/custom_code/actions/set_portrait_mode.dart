// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart';

Future setPortraitMode() async {
  // Add your function code here!

  // Set status bar color
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.redAccent, // <-- see here
      statusBarIconBrightness:
          Brightness.dark, //<-- For Android see here (dark icons)
      statusBarBrightness: Brightness.light, //<-- For iOS see here (dark icons)
    ),
  );
}
