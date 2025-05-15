import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../../../common/widgets/successs_screen/success_screen.dart';
import '../../../data/repositories/authentication/authentication_repository.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/loaders/loaders.dart';
class VerifyEmailController extends GetxController{
  static VerifyEmailController get instance => Get.find();
Timer? timer;
  @override
  void onInit(){
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  sendEmailVerification() async{
    try{
      await AuthenticationRepository.instance.sendEmailVerification();
      TLoaders.successSnackBar(title: 'Email Sent',message: 'Please Check your inbox and verify your email');
    } catch(e){
      TLoaders.errorSnackBar(title:'Oh Snap!',message:e.toString());
    }
  }

  setTimerForAutoRedirect(){
    Timer.periodic(const Duration(seconds:1),(time) async{
    await FirebaseAuth.instance.currentUser?.reload();
    final user =FirebaseAuth.instance.currentUser;
    if(user?.emailVerified??false){
      timer?.cancel();
      Get.off(
          ()=>SuccessScreen(
            image:TImages.successfullyRegisterAnimation,
            title: TTexts.yourAccountCreatedTitle,
            subTitle:TTexts.yourAccountCreatedSubTitle,
            onPressed:()=> AuthenticationRepository.instance.screenRedirect(),
          )
      );
    }
    });
  }
  checkEmailVerificationStatus() async  {
    final current = FirebaseAuth.instance.currentUser;
    if(current!=null&&current.emailVerified) {
      Get.off(
          ()=>SuccessScreen(
            image:TImages.successfullyRegisterAnimation,
            title:TTexts.yourAccountCreatedTitle,
            subTitle:TTexts.yourAccountCreatedSubTitle,
            onPressed:()=>AuthenticationRepository.instance.screenRedirect(),
          )
      );
    }
  }
}