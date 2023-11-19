import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey();
  String user = '';
  String password = '';

  validateForm() {
    if (formKey.currentState!.validate()) {
      return true;
    }
    return false;
  }
}
