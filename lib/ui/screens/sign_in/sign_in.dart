part of '../../screens/screens.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SIGN IN'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Consumer<SignInProvider>(
            builder: (context, provider, _) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: provider.email,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    errorText: provider.errorEmail ? 'username invalid' : null,
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: provider.password,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    errorText: provider.errorEmail ? 'password invalid' : null,
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => provider.signIn(context),
                  child: const Text('SIGN IN'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUp(),
                    ),
                  ),
                  child: const Text('SIGN UP'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
