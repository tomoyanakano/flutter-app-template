extension ExceptionExtension on Exception {
  String get message => toString().replaceAll('Exception: ', '');
}
