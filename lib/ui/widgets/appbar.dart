part of 'widgets.dart';

class AppBarWidget extends StatelessWidget {
  bool leading;
  String title;
  bool centerTitle;

  AppBarWidget({Key? key,
    this.leading = false,
    this.title = '',
    this.centerTitle = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).padding.top,
          color: Colors.blue,
        ),
        Container(
          color: Colors.blue,
          height: AppBar().preferredSize.height,
          child: Row(
            children: [
              if (leading != false)
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios_new_rounded),
                ),
              Expanded(
                child: Align(
                  alignment: centerTitle == true
                      ? Alignment.center
                      : Alignment.centerLeft,
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
