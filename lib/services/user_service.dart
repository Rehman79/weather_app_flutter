import 'package:firebase_auth/firebase_auth.dart';

class UserService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? get currentUser => _auth.currentUser;

  String? getUserName() {
    try {
      if (currentUser != null) {
        return currentUser!.displayName;
      }
    } catch (e) {
      print("Error fetching user name: $e");
      throw Exception("Failed to fetch user name");
    }
    return null;
  }

  String? getUserEmail() {
    try {
      if (currentUser != null) {
        return currentUser!.email;
      }
    } catch (e) {
      print("Error fetching user email: $e");
      throw Exception("Failed to fetch user email");
    }
    return null;
  }
}
