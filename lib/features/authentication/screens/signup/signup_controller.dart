import 'package:e_commerce/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce/utils/popups/full_screen_loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../data/repositories/user/user_model.dart';
import '../../../../data/repositories/user/user_repository.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/loaders/loaders.dart';
import 'network_manager.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  //variables
  final hidepassword = true.obs;
  final privacypolicy = true.obs;
  final email = TextEditingController(); //controller  for email input
  final lastName = TextEditingController(); //controller  for email input
  final username = TextEditingController(); //controller  for email input
  final password = TextEditingController(); //controller  for email input
  final firstName = TextEditingController(); //controller  for email input
  final phoneNumber = TextEditingController(); //controller  for email input
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  //Signup
  void signup() async {
    try {
      //start loading
      TFullScreenLoader.openLoadingDialog(
        'we are processing your information...',
        TImages.docerAnimation,
      );
      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;
      //form validation
      if (!signupFormKey.currentState!.validate()) return;
      // if (!(signupFormKey.currentState?.validate() ?? false)) return;
      if(!privacypolicy.value){
        TLoaders.warningSnackBar(title: 'Accept Privacy policy',
        message: 'In order to create account, you must  have to read and accept the privacy policy & terms of use');
        return;
      }
      final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(),password.text.trim());

     final newUser = UserModel(
       id:userCredential.user!.uid,
       firstName:firstName.text.trim(),
       lastName:lastName.text.trim(),
       email:email.text.trim(),
       phoneNumber:phoneNumber.text.trim(),
       profilePicture:'', username: '',
     );
     final userRepository = Get.put(UserRepository());
     await userRepository.saveUserRecord(newUser);
     TLoaders.successSnackBar(title: 'Congratulations',message: 'Your account has been created! verify email to continute');
     Get.to(()=>VerifyEmailScreen(email:email.text.trim(),));
      //privacy policy check
      //register user in the firebase authentication & save user data in the  firebase
      //save authentication user data  in the firebase firestore
      // show success message
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      TFullScreenLoader.stopLoading();
    }
  }
}
