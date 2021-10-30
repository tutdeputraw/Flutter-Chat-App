part of 'provider.dart';

class SignUpProvider with ChangeNotifier {
  TextEditingController _username = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  void signUp(context) {
    AuthMethod authMethod = new AuthMethod();
    authMethod.signUpWithEmailAndPassword(email.text, password.text).then(
      (value) {
        if (value.runtimeType == String) {
          CustomSnackBar(context).showSnackbar(value);
        } else {
          print("TYPE: " + value.runtimeType.toString());
          print('SUCCESS: ' + value);
        }
      },
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
