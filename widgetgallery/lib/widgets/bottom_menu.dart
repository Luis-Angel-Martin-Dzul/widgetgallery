import 'package:flutter/material.dart';
import 'package:widgetgallery/models/models.dart';
import 'package:widgetgallery/widgets/widgets.dart';

class BottomMenu extends StatelessWidget {
  final List<MenuOption> items;

  const BottomMenu({Key? key, required this.items}) : super(key: key);

  List<ButtonMenu> _getOptions(List<MenuOption> item) =>
    AppRoute.listScreens.map((option) => ButtonMenu(option: option)).toList();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: _getOptions(items),
          ),
      ),
    );
  }
}