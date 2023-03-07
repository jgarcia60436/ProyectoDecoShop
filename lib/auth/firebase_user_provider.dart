import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ProyectoDecoShopFirebaseUser {
  ProyectoDecoShopFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ProyectoDecoShopFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ProyectoDecoShopFirebaseUser> proyectoDecoShopFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ProyectoDecoShopFirebaseUser>(
      (user) {
        currentUser = ProyectoDecoShopFirebaseUser(user);
        return currentUser!;
      },
    );
