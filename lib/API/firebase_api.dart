import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi {
  //Istance of Messaging Firebase........
  final _firebaseMessaging = FirebaseMessaging.instance;
  //Main Function
  Future<void> initNotifications() async {
    //Rquest Permission from user........
    await _firebaseMessaging.requestPermission();

    // Fetch Firebase cloud Messaging Token...........
    final FCMToken = await _firebaseMessaging.getToken();
    //Print the token (Get from server)
    print('Token: $FCMToken');
  }
  //Received Messaging
}
