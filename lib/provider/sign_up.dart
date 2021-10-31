part of 'provider.dart';

class SignUpProvider with ChangeNotifier {
  TextEditingController _username = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  SignUpProvider() {
    print('SignUpProvider');
  }

  void signUp(context) {
    SignUpHelper(context).userSignUp(
      username.text,
      email.text,
      password.text,
    );
  }

  TextEditingController get username => _username;

  set username(TextEditingController value) {
    _username = value;
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
}
