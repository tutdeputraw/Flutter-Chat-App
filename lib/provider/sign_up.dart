part of 'provider.dart';

class SignUpProvider with ChangeNotifier {
  TextEditingController _username = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  TextEditingController get username => _username;

  void signUp() {
    print(username.text);
    print(password.text);
    print(email.text);
    
    AuthMethod authMethod = new AuthMethod();
    authMethod
        .signUpWithEmailAndPassword(email.text, password.text)
        .then((value) {
      print(value);
    });
  }

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
