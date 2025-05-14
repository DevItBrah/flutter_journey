import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/onboarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


import '../../../features/authentication/screens/signup/verify_email.dart';
import '../../../navigation_menu.dart';
import '../../../utils/exceptions/firebase_auth_exceptions.dart';
import '../../../utils/exceptions/firebase_exceptions.dart';
import '../../../utils/exceptions/format_exceptions.dart';
import '../../../utils/exceptions/platform_exception.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  final deviceStorage = GetStorage();

  @override
  void onReady(){
    FlutterNativeSplash.remove();
    screenRedirect();
  }


  screenRedirect() async {
    final user =_auth.currentUser;
  if(user!= null){
    if(user.emailVerified){
      Get.offAll(() => const NavigationMenu());
    } else{
      Get.offAll(()=>VerifyEmailScreen(email:_auth.currentUser?.email));
    }
  }else{
    deviceStorage.writeIfNull('IsFistTime', true);
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(const OnBoardingScreen());
  }
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
  Future<UserCredential>loginWithEmailAndPassword(String email,String password) async{
    try{
      return await _auth.signInWithEmailAndPassword(email:email, password:password)
    }on FirebaseAuthException catch(e){
      throw FirebaseAuthException(e.code).message;
          }on FirebaseException catch (e){
      throw TFirebaseException(e.code).message;
    }on FormateException catch(_){
      throw const TFormatExcepton();
    }on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    }catch (e){
      throw 'Something went wrong. Please try again';
    }
  }

  Future<UserCredential> registerWithEmailAndPassword(String email,String password) async{
    try{
      return await _auth.createUserWithEmailAndPassword(String email, String password);
    } on FirebaseAuthException catch (e){
      throw TFirebaseAuthException(e.code).message;
    }on FirbaseException catch(e){
      throw TFirebaseException(e.code).message;
    }on FormatException catch(_){
      throw const TFormatException();
    }on PlatformException catch(e){
      throw TPlatformException(e.code).message;
    } catch (e){
      throw 'something went wrong.please try again'
    }
  }

  // email verification
  Future<void>sendEmailVerification() async{
    try{
      await _auth.currentUser?.sendEmailVerification();
    }on FirebaseAuthException catch(e){
      throw TFirebaseAuthException(e.code).message;
    }on FirebaseException catch (e){
      throw TFirebaseException(e.code).message;
    }on FormatException catch(_){
      throw const TFormatException();
    }on TPlatformException(e.code).message;
  }catch(e){
    throw "Something went wrong. Please try again"
  }







  Future<void> logout() async{
    try{
      await FirebaseAuth.instance.signOut();
      Get.offAll(()=> const LoginScreen());
  }on FirebaseAuthException catch(e){
      throw TFirebaseAuthException(e.code).message;
  }on FirebaseException catch(e){
      throw TFirebaseException(e.code).message;
  }on FormatException catch(_){
      throw const TFormatException();
  } on PlatformException catch(e){
      throw TPlatformException(e.code).message;
  }catch (e){
      throw'Something went wrong. Please try again';
  }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
