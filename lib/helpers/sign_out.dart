part of 'helpers.dart';

class SignOutHelper {
  BuildContext _context;

  SignOutHelper(this._context);

  void userSignOut() {
    AuthMethod authMethod = AuthMethod();
    authMethod.signOut().then((value) {
      UserSessionHelper().clear();
      Navigator.of(_context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const SignIn(),
        ),
        (route) => false,
      );
    });
  }
}
