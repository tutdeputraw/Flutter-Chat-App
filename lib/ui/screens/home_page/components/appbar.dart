part of '../../../screens/screens.dart';

class HomepageAppBar extends StatelessWidget {
  const HomepageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text('Messages'),
      actions: [
        TextButton(
          onPressed: () => SignOutHelper(context).userSignOut(),
          child: const Text('SIGN OUT'),
        ),
      ],
    );
  }
}
