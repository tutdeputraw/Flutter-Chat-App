part of 'provider.dart';

class SignInProvider with ChangeNotifier {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _errorEmail = false;
  bool _errorPassword = false;

  SignInProvider(){
    print("SignInProvider");
  }

  void signIn(context) {
    SignInHelper(context).userSignIn(
      email.text,
      password.text,
    );
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
