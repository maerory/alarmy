import 'package:alarmy/enums.dart';
import 'package:flutter/material.dart';

class MenuInfo extends ChangeNotifier {
  MenuType menuType;
  String title;

  MenuInfo(this.menuType, {this.title});

  updateMenu(MenuInfo menuInfo) {
    this.menuType = menuInfo.menuType;
    this.title = menuInfo.title;

    // VIP
    notifyListeners();
  }
}
