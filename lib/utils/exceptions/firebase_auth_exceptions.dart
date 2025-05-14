class TFirebaseAuthException implements Exception{
  final String code;
  TFirebaseAuthException(this.code);

  String get message{
    switch(code){
      case 'email-already-in-use':
        return'The email address is already registerrd.please use a different email.';
      case 'invalid-email':
        return'Them email address is provided is invalid. Plsease enter a valid email';
      case 'weak-password':
        return'The password is too weak. please choose a stronger password.';
      case 'user-disabled':
        return'This user account has been disabled. Please contact support for assistance.';
      case 'user-not-found':
        return'Invalid login details. user not found';
      case 'Wrong password':
        return'Incorrect password. please check your password and try again.';
      case 'Invalid-verification-code':
        return'Invalid verificaton ID. Please request a new verification code.';
      case 'Quota exceeded':
        return'Quota exceeded.Please try again later.';
      case 'email-already-exists':
        return'The email address already existes. Please use different email address.';
      case'Provider-already-linked':
        return'The account is already linked with another provider.';
      case'requires-recent-login':
        return 'This operation is sensitive adn requires recent authentication. Please login again.';
      case'credential-alrady-in-use':
        return 'This credential is already associated with a different user account.';
      case'user-mismatch':
        return'The supplied credentials do not correspond to the previously signed in user.';
      case'account-exists-with-different-credential':
        return'An account already exists with the same email but different sign-in credentials.';
      case'operation-not-allowed':
        return'This operation is not allowed. contact support for assistance';
      case'expired-action-code':
        return 'The action code has expired. please request a new action code';
      case 'invalid-action-code':
        return'The action code is invalid. Please check the code and try again';
      case 'mmissing-action-code':
        return 'The action code is missing. Please provide a valid action code.';
      case 'user-token-expired':
        return 'a';
    }
  }
}