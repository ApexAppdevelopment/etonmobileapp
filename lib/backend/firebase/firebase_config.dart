import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDqpjHyEOHot3xU7Is5dXmT0KrMtBPn3dE",
            authDomain: "etonapp2022.firebaseapp.com",
            projectId: "etonapp2022",
            storageBucket: "etonapp2022.appspot.com",
            messagingSenderId: "933751434635",
            appId: "1:933751434635:web:4d9de85497592746b5d38e",
            measurementId: "G-D00F4R3BCR"));
  } else {
    await Firebase.initializeApp();
  }
}
