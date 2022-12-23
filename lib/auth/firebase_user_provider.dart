import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TheETonFirebaseUser {
  TheETonFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

TheETonFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TheETonFirebaseUser> theETonFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<TheETonFirebaseUser>(
      (user) {
        currentUser = TheETonFirebaseUser(user);
        return currentUser!;
      },
    );
