
import 'package:flutter/material.dart';
import 'package:my_spot_admin/pages/admin_page.dart';
import 'package:my_spot_admin/pages/books_pages.dart';
import 'package:my_spot_admin/pages/login_page.dart';
// import 'package:my_spot_admin/pages/signup_page.dart';



Map<String, WidgetBuilder> getRoutes(){

  return <String, WidgetBuilder>{
    '/'       : (context) => Login(),
    // '/signup' : (context) => SignUp(),
    '/admin'  : (context) => Admin(),
    '/books'  : (context) => Books(),
  };

}