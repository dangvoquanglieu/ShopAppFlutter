import 'package:flutter/material.dart';
import 'package:flutter_application_shopp_app/providers/cart.dart';
import 'package:flutter_application_shopp_app/providers/products.dart';
import 'package:flutter_application_shopp_app/screens/cart_screen.dart';
import 'package:flutter_application_shopp_app/screens/product_detail_screen.dart';
import 'package:flutter_application_shopp_app/screens/product_overview_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Cart()),
        ChangeNotifierProvider(create: (ctx) => Products())
      ],
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato'),
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen()
        },
      ),
    );
  }
}
