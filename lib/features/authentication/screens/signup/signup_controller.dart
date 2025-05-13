import 'package:e_commerce/utils/popups/full_screen_loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
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
  Future<void> signup() async {
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
