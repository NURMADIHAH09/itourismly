import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB6gjd2jVEe9K9Uw7jkeBMYfz97NNv4zE0",
            authDomain: "itourismlyfyp.firebaseapp.com",
            projectId: "itourismlyfyp",
            storageBucket: "itourismlyfyp.appspot.com",
            messagingSenderId: "190179681160",
            appId: "1:190179681160:web:d23f06879f2729deaf503d",
            measurementId: "G-3FFMKY2T91"));
  } else {
    await Firebase.initializeApp();
  }
}
