import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  String? uid;
  String? fname;
  String? lname;
  String? email;

  UserModel({this.uid, this.fname, this.lname, this.email});

  //recevoir les data from serveur
  factory UserModel.fromMap(map) {
    return UserModel(
        uid: map["uid"],
        fname: map["firstname"],
        lname: map["lastname"],
        email: map["email"]);
  }

  // Send the data to server
  Map<String, dynamic> toMap() {
    return {"uid": uid, "firstname": fname, "lastname": lname, "email": email};
  }
}
