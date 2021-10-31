part of '../../screens/screens.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF274472),
      body: Container(
        child: Column(
          children: const [
            HomepageAppBar(key: Key('HomepageAppBar')),
            HomepageSearchBar(key: Key('HomepageSearchBar')),
            HomepageMessages(key: Key('HomepageMessages')),
          ],
        ),
      ),
    );
  }
}
