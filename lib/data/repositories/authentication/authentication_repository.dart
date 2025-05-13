import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  final deviceStorage = GetStorage();

  void onReady(){
    FlutterNativeSplash.remove();
    screenRedirect();
  }


  screenRedirect() async {
    deviceStorage.writeIfNull('IsFistTime', true);
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(const OnBoardingScreen());
  }
  //   if(kDebugMode){
  //     print('===================Get Storage auth repo========================');
  //     print(deviceStorage.read('IsFirstTime'));
  //   }
  //   //local storage
  //   deviceStorage.writeIfNull('IsFirstTime',true);
  //   deviceStorage.read('IsFirstTime') !=true ? Get.offAll(()=> const LoginScreen()):Get.offAll(const OnBoardingScreen());
  //
  // }


  // Future<UserCredential> registerWithEmailAndPassword(String email,String password) async{
  //   try{
  //     return await _auth.createUserWithEmailAndPassword(email:email,password:password);
  //   }on FirebaseAuthException catch(e){
  //     throw TFirebaseAuthException(e.code).message;
  //   }on FirebaseException catch(e){
  //     throw TFirebaseException(e.code).message;
  //   }on FormatException catch(_){
  //     throw TPlatformException catch (e){
  //       throw TPlatformException(e.code).messages;
  //   }catch (e){
  //       throw 'something went wrong. Please try again';
  //   }
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
