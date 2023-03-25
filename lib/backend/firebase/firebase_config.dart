import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDJu0wZDOKXrxEmFcHVCDqjnqIVRNLDaKM",
            authDomain: "proyectodecoshop.firebaseapp.com",
            projectId: "proyectodecoshop",
            storageBucket: "proyectodecoshop.appspot.com",
            messagingSenderId: "373429738221",
            appId: "1:373429738221:web:eaeeffcabe039cf4d74ae4",
            measurementId: "G-DBZLBGMRFG"));
  } else {
    await Firebase.initializeApp();
  }
}
