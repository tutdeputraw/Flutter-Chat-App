import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_app/provider/provider.dart';
import 'package:flutter_chat_app/ui/screens/screens.dart';
import 'package:provider/provider.dart';
import 'package:flutter_chat_app/ui/widgets/widgets.dart';

void main() {
  init();
  runApp(const MyApp());
}

init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SignInProvider()),
        ChangeNotifierProvider(create: (_) => SignUpProvider()),
        ChangeNotifierProvider(create: (_) => StateProvider()),
        ChangeNotifierProvider(create: (_) => BottomNavigationProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Chat App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Consumer<StateProvider>(builder: (context, provider, _) {
            if (provider.getAppState != null) {
              switch (provider.getAppState) {
                case state.authorize:
                  return const HomePage();
                case state.unauthorize:
                  return const SignIn();
                default:
                  CustomSnackBar(context).showSnackbar('ERROR');
              }
            }
            return Center(child: CircularProgressIndicator());
          }),
        ),
      ),
    );
  }
}
