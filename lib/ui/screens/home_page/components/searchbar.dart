part of '../../../screens/screens.dart';

class HomepageSearchBar extends StatelessWidget {
  const HomepageSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 16,
      ),
      child: TextFormField(
        style: const TextStyle(color: Colors.white),
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.search_rounded,
            color: Colors.white,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
