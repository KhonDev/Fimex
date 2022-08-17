import 'package:fimex/app/ui/screens/menu/widgets/index.dart';
import 'package:flutter/cupertino.dart';

//?
class MenuState extends ChangeNotifier {
  final _tabsTitle = [
    'Notification',
    'Warranty',
    'Support',
    'Find IMEI',
  ];

  final _tabs = const [
    NotificationTab(key: ValueKey(0)),
    WarrantyTab(key: ValueKey(1)),
    SupportTab(key: ValueKey(2)),
    FindImeiTab(key: ValueKey(3)),
  ];

  int _selectedTab = 0;
  bool _isChatActive = false;
  final _imeiController = TextEditingController();
  bool _isIMEIError = false;
  bool _isIMEIValidToFind = false;
  bool _isIMEIValid = false;

  int get selectedTab => _selectedTab;
  bool get isChatActive => _isChatActive;
  bool get isIMEIError => _isIMEIError;
  bool get isIMEIValidToFind => _isIMEIValidToFind;
  bool get isIMEIValid => _isIMEIValid;
  TextEditingController get imeiController => _imeiController;
  List<String> get tabsTitle => _tabsTitle;
  List<Widget> get tabs => _tabs;

  void changeTab(int tab) {
    _selectedTab = tab;
    notifyListeners();
  }

  void toogleChat() {
    _isChatActive = !_isChatActive;
    notifyListeners();
  }

  void validateIMEI(String text) {
    if (text.isEmpty) {
      _isIMEIValidToFind = false;
    } else {
      _isIMEIValidToFind = true;
    }
    notifyListeners();
  }

  void findIMEI() {
    final text = _imeiController.text.trim();

    if (text.isEmpty || text != 'SH4YHG1BV0F00') {
      _isIMEIError = true;
      _isIMEIValid = false;
    } else {
      _isIMEIValid = true;
      _isIMEIError = false;
    }
    notifyListeners();
  }
}
