class TFormatException implements Exception{
  final String message;
  const TFormatException([this.message='An unexpected format eorrr occured. Please try again']);

  factory TFormatException.fromMessage(String message){
    return TFormatException(message);
}
String get formattedMessage=>message;

  factory TFormatException.fromCode(String code){
    switch(code){
      case 'invalid-email-format':
        return const TFormatException('The email address format is invalid. Please enter a valid email');
      case 'invalid-phone-number-format':
        return const TFormatException('The provided phone number format is invalid. Please enter a valid number');
      case 'invald-data-format':
        return const TFormatException('The data formate is invalid.Please enter a valid date.');
      case 'invalid-url-format':
        return const TFormatException('The URL format is invalid .Please enter a valid URL')

}
}
}
