import 'package:flutter/material.dart';
import 'package:widgetgallery/widgets/widgets.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(items: AppRoute.listScreens),
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          mainAxisSize:MainAxisSize.max,
          children: const <Widget>[
            FlutterLogo(size:300),
            SizedBox(height: 5,),
            Text('Order Screen...')
          ]
        )
      ),
    );
  }
}