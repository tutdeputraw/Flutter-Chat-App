part of 'provider.dart';

class BottomNavigationProvider with ChangeNotifier {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> buildScreens() {
    return [
      const HomePage(),
      const PhonePage(),
      const CameraPage(),
      const SettingsPage(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.chat_rounded,
        ),
        title: ("Chats"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.phone_rounded,
        ),
        title: ("Phone"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.photo_camera_rounded,
        ),
        title: ("Camera"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.settings_rounded,
        ),
        title: ("Settings"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  PersistentTabController get controller => _controller;

  set controller(PersistentTabController value) {
    _controller = value;
    notifyListeners();
  }
}
