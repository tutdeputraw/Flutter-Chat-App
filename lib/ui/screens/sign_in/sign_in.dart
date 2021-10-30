part of '../../screens/screens.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarWidget(
            key: const ValueKey('sign in appbar'),
            title: 'Sign In',
            centerTitle: true,
          ),
          Expanded(
            child: _body,
          ),
        ],
      ),
    );
  }

  Widget get _body {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Username',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Sign In'),
          ),
          // const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Sign Up'),
          ),
        ],
      ),
    );
  }
}
