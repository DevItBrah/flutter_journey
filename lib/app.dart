import 'package:e_commerce/bindings/general_bindings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/utils/theme/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'features/authentication/screens/onboarding/onboarding.dart';

void main(){
  runApp(const App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme:TAppTheme.lightTheme,
      darkTheme:TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      home: const Scaffold(backgroundColor: TColors.primary,body:Center(child: CircularProgressIndicator(color: Colors.white,),))
    );
  }
}
