
import 'package:flutter/material.dart';
import 'package:my_coffee_shop/models/user.dart';
import 'package:my_coffee_shop/screens/Dashboard/dashboard.dart';
import 'package:my_coffee_shop/screens/authenticate/authenticate.dart';
import 'package:my_coffee_shop/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    
    // return either the Home or Authenticate widget
    if (user == null){
      return Authenticate();
    } else {
      return Dashboard();
    }
    
  }
}