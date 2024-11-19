import 'package:blog_app/pages/home_page.dart';
import 'package:blog_app/pages/login_blog_page.dart';
import 'package:blog_app/pages/profile_blog.dart';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginBlogPage(),
    );
  }
}