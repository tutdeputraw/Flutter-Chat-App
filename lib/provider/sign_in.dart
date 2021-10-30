part of 'provider.dart';

class SignInProvider with ChangeNotifier {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _errorEmail = false;
  bool _errorPassword = false;

  void signIn() {
    if (email.text != 'halo') {
      errorEmail = true;
    }
    if (password.text != 'halo') {
      errorPassword = true;
    } else {
      errorEmail = false;
      errorPassword = false;
    }
  }

  bool get errorEmail => _errorEmail;

  set errorEmail(bool value) {
    _errorEmail = value;
    notifyListeners();
  }

  TextEditingController get email => _email;

  set email(TextEditingController value) {
    _email = value;
    notifyListeners();
  }

  TextEditingController get password => _password;

  set password(TextEditingController value) {
    _password = value;
    notifyListeners();
  }

  bool get errorPassword => _errorPassword;

  set errorPassword(bool value) {
    _errorPassword = value;
    notifyListeners();
  }
}
