import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../../../data/repositories/user/user_repository.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/loaders/loaders.dart';
import '../../../../../utils/popups/full_screen_loader.dart';
import '../../../../authentication/screens/signup/network_manager.dart';
import '../../../controllers/user_controller.dart';
import '../profile.dart';
class UpdateNameController extends GetxController {
  static UpdateNameController get instance =>Get.find();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());
  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();


  void OnInit(){
    initializeNames();
    super.onInit();
  }

  Future<void>initializeNames() async{
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }

  Future<void> updateUserName() async{
    try{
      TFullScreenLoader.openLoadingDialog('We are updating information...',TImages.docerAnimation);
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        TFullScreenLoader.stopLoading();
        return;
      }

      //Form validation
      if(!updateUserNameFormKey.currentState!.validate()){
        TFullScreenLoader.stopLoading();
        return;
      }
      // update user's first & last name in the firebase firestore
      Map<String, dynamic>name = {'FirstName':firstName.text.trim(),'LastName':lastName.text.trim()};
      await userRepository.updateSingleField(name);

      //Update the RX user value
      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = lastName.text.trim();

      // remove loader
      TFullScreenLoader.stopLoading();
      // show success message
      TLoaders.successSnackBar(title:'Congratulations',message:'Your name has been updated.');
      Get.off(()=> const ProfileScreen());
    } catch(e){
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title:'Oh Snap!',message:e.toString());
    }
  }
}
