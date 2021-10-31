part of 'provider.dart';

enum state { authorize, unauthorize }

class StateProvider with ChangeNotifier {
  state? _appState;

  StateProvider() {
    init();
  }

  void init() async {
    await getState();
  }

  Future getState() async {
    if (await UserSessionHelper().isContainUser()) {
      setAppState = state.authorize;
    } else {
      setAppState = state.unauthorize;
    }
  }

  state? get getAppState => _appState;

  set setAppState(state value) {
    _appState = value;
    notifyListeners();
  }
}
