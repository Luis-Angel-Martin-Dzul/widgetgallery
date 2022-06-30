import 'package:flutter/material.dart';
import 'package:widgetgallery/widgets/bottom_menu.dart';
import 'package:widgetgallery/widgets/widgets.dart';


class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(items: AppRoute.listScreens),
    );
  }
}