import 'package:flutter/material.dart';
import 'package:widgetgallery/widgets/bottom_menu.dart';
import 'package:widgetgallery/widgets/widgets.dart';


class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(items: AppRoute.listScreens),
    );
  }
}