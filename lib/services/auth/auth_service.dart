import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // get instance of firebase auth
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // get current user
  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }

  // sign In
  Future<UserCredential> signInWithEmailPassword(String email, password) async {
 // try sign user in
 try{
  UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password,);
  return userCredential;

 }
 // catch any errors
 on FirebaseAuthException catch (e) {
  throw Exception(e.code);
 }
  }
    // Sign Up 
   Future<UserCredential> signUpWithEmailPassword(String email, password) async {
 // try sign user up
 try{
  UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password,);
  return userCredential;

 }
 // catch any errors
 on FirebaseAuthException catch (e) {
  throw Exception(e.code);
 }
  }

  // sign Out
  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }
}