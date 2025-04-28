import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TTextFormFieldTheme{
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme= InputDecorationTheme(
    errorMaxLines:3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize:14,color:Colors.black),
    hintStyle: const TextStyle().copyWith(fontSize:14,color:Colors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:const TextStyle().copyWith(color: Colors.black.withValues(alpha: 0.8)),
      border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
        borderSide: const BorderSide(width:1, color: TColors.grey),
      ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width:1,color:Colors.grey),),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width:1,color:TColors.dark),),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width:1,color:TColors.warning),),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width:1,color:TColors.warning),),
  );
  static InputDecorationTheme darkInputDecorationTheme= InputDecorationTheme(
    errorMaxLines:3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize:14,color:Colors.black),
    hintStyle: const TextStyle().copyWith(fontSize:14,color:Colors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:const TextStyle().copyWith(color: Colors.black.withValues(alpha: 0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width:1, color: Colors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width:1,color:Colors.grey),),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width:1,color:Colors.white),),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width:1,color:Colors.grey),),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width:1,color:Colors.grey),),
  );

}