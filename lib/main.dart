import 'package:flutter/material.dart';
import 'package:online_shop/home.dart';
import 'package:online_shop/register.dart';

void main() {
  runApp(OnlineShop());
}

class OnlineShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}
