// Route generator for the app 
// Handles the context for the navigation


// Dart imports
import 'package:flutter/material.dart';

// Pages import
import 'package:my_spot_admin/pages/admin_page.dart';
import 'package:my_spot_admin/pages/books_pages.dart';
import 'package:my_spot_admin/pages/login_page.dart';



Map<String, WidgetBuilder> getRoutes(){

  return <String, WidgetBuilder>{
    '/'       : (context) => Login(),
    // '/signup' : (context) => SignUp(),
    '/admin'  : (context) => Admin(),
    '/books'  : (context) => Books(),
  };

}