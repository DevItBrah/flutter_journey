import 'package:e_commerce/data/repositories/user/user_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
class UserRepository extends GetxController {
 static UserRepository get instance => Get.find();

 final FirebaseFirestore _db = FirebaseFirestore.instance;

 Future<void> saveUserRecord(UserModel user) async {
   try {
     await _db.collection('Users').doc(user.id).set(user.toJson());
   } on FirebaseException catch (e) {
     throw TFirebaseException(e.code).messages;
   } on FormateException catch (_) {
     throw const TFormatException();
   } on PlatformException catch (e) {
     throw TPlateformException(e.code).messages;
   } catch (e) {
     throw 'Something went wrong. Please try again';
   }
 }
}
