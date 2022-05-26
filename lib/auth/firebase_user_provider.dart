import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class EssaiFirebaseUser {
  EssaiFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

EssaiFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<EssaiFirebaseUser> essaiFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<EssaiFirebaseUser>((user) => currentUser = EssaiFirebaseUser(user));
