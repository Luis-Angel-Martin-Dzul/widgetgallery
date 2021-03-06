import 'package:flutter/material.dart';
import 'package:widgetgallery/models/models.dart';
import 'package:widgetgallery/screens/home_screen.dart';
import 'package:widgetgallery/screens/login_screen.dart';
import 'package:widgetgallery/screens/order_screen.dart';
import 'package:widgetgallery/screens/profile_screen.dart';
import 'package:widgetgallery/screens/singup_screen.dart';

export 'package:widgetgallery/widgets/botton_menu.dart';
export 'package:widgetgallery/widgets/bottom_menu.dart';
export 'package:widgetgallery/widgets/genders_control.dart';
export 'package:widgetgallery/widgets/input_form.dart';
export 'package:widgetgallery/widgets/dropdown_form.dart';

class AppRoute{
  static const String root = '/';

  static final List<MenuOption> listScreens = [
    MenuOption(
      icon: Icons.house_outlined, 
      route: '/',  
      screen: const HomeScreen(),
      title: 'House',
      ),
    MenuOption(
      icon: Icons.list_outlined,
      route: '/orders',  
      screen: const OrderScreen(),
      title: 'Orders',
      ),
    MenuOption(
      icon: Icons.login_outlined, 
      route: '/login',  
      screen: const LoginScreen(),
      title: 'Login',
      ),
    MenuOption(
      icon: Icons.person_outline, 
      route: '/profile',  
      screen: const ProfileScreen(),
      title: 'Profile',
      ),
    MenuOption(
      icon: Icons.account_circle_outlined,
      route: '/signup',  
      screen: const SingUpScreen(),
      title: 'Sing Up',
      ),
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes(){
    Map<String, Widget Function(BuildContext)> routes = {};

    for(MenuOption item in listScreens){
      routes[item.route] = (context) => item.screen;
    }
    return routes;
  }
}