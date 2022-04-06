import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FortCollinsFoodBankAppFirebaseUser {
  FortCollinsFoodBankAppFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

FortCollinsFoodBankAppFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FortCollinsFoodBankAppFirebaseUser>
    fortCollinsFoodBankAppFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FortCollinsFoodBankAppFirebaseUser>(
            (user) => currentUser = FortCollinsFoodBankAppFirebaseUser(user));
