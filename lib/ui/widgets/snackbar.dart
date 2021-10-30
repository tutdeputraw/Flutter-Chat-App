part of 'widgets.dart';

class CustomSnackBar {
  BuildContext context;

  CustomSnackBar(this.context);

  void showSnackbar(text) {
    final snackBar = SnackBar(
      content: Container(
        child: Text(text),
      ),

      backgroundColor: Colors.red[300],
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
