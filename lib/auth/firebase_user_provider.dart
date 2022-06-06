import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AuPoilFirebaseUser {
  AuPoilFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

AuPoilFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AuPoilFirebaseUser> auPoilFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<AuPoilFirebaseUser>((user) => currentUser = AuPoilFirebaseUser(user));
