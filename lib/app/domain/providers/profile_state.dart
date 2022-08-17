import 'package:fimex/app/ui/screens/profile/widgets/tabs/index.dart';
import 'package:flutter/cupertino.dart';

//?
class ProfileState extends ChangeNotifier {
  final _tabsTitle = ['Your Orders', 'Account', 'Your Likes'];

  final _tabs = const [
    OrdersTab(key: ValueKey(0)),
    AccountTab(key: ValueKey(1)),
    LikesTab(key: ValueKey(2)),
    AllTab(key: ValueKey(3)),
  ];

  int _selectedTab = 3;

  int get selectedTab => _selectedTab;
  List<String> get tabsTitle => _tabsTitle;
  List<Widget> get tabs => _tabs;

  void changeTab(int tab) {
    if (_selectedTab == tab) {
      _selectedTab = 3;
    } else {
      _selectedTab = tab;
    }

    notifyListeners();
  }
}
