import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/data/repositories/user/user_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../utils/exceptions/firebase_exceptions.dart';
import '../../../utils/exceptions/format_exceptions.dart';
import '../../../utils/exceptions/platform_exceptions.dart';
class UserRepository extends GetxController {
 static UserRepository get instance => Get.find();

 final FirebaseFirestore _db = FirebaseFirestore.instance;

 Future<void> saveUserRecord(UserModel user) async {
   try {
     await _db.collection('Users').doc(user.id).set(user.toJson());
   } on FirebaseException catch (e) {
     throw TFirebaseException(e.code).message;
   } on FormatException catch (_) {
     throw const TFormatException();
   } on PlatformException catch (e) {
     throw TPlatformException(e.code).message;
   } catch (e) {
     throw 'Something went wrong. Please try again';
   }
 }
 Future<UserModel> fetchUserDetails() async{
   try{
     final documentSnapshot = await _db.collection("Users").doc().get();
     if(documentSnapshot.exists){
       return UserModel.fromSnapshot(documentSnapshot);
     } else {
       return UserModel.empty();
     }
   } on FirebaseException catch(e){
     throw TFirebaseException(e.code).message;
   }on FormatException catch(_){
     throw const TFormatException();
   }on PlatformException catch(e){
     throw TPlatformException(e.code).message;
   }
 catch (e){
   throw 'Something went wrong. please try again';
 }
}
Future<void> updateUserDetails(UserModel updateUser) async{
 try{
 await _db.collection("Users").doc(updateUser.id).update(updateUser.toJson());
 }on FirebaseException catch(e){
   throw TFirebaseException(e.code).message;
 }on FormatException catch(_){
   throw const TFormatException();
 }on PlatformException catch(e){
   throw TPlatformException(e.code).message;
 }catch (e){
   throw 'Something went wrong. Please try again';
 }
}

Future<void>updateSingleField(Map<String, dynamic>json)async{
   try{
     await _db.collection("Users").doc().update(json);
   } on FirebaseException catch(e){
     throw TFirebaseException(e.code).message;
   }on FormatException catch(_){
     throw const TFormatException();
   }on PlatformException catch(e){
     throw TPlatformException(e.code).message;
   } catch(e){
     throw 'Something went wrong.please try again';
   }
}


Future<void> removeUserRecord(String userId) async{
   try{
     await _db.collection("Users").doc(userId).delete();
   }on FirebaseException catch(e){
     throw TFirebaseException(e.code).message;
   }on FormatException catch(_){
     throw const TFormatException();
   }on PlatformException catch(e){
     throw TPlatformException(e.code).message;
   }catch(e){
     throw 'Something went wrong. Please try again';
   }
}
}
