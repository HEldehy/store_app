import 'package:flutter/material.dart';
import 'package:new_firststeps_ecomerce_app/screens/home_page.dart';
import 'package:new_firststeps_ecomerce_app/screens/update_prodect.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'e-commerce Api',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HomePage.id: (context) => const HomePage(),
        UpdateProduct.id:(context)=> UpdateProduct()

      },
      initialRoute: HomePage.id,
    );
  }
}
