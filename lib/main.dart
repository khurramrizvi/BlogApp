import 'package:flutter/material.dart';
import 'package:blog_app/pages/main_content.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Montserrat',accentColor: Colors.deepOrange),
    home: MyBlog(),
  ));
}

class MyBlog extends StatefulWidget {
  @override
  _MyBlogState createState() => _MyBlogState();
}

class _MyBlogState extends State<MyBlog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /*appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),*/
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home), onPressed: (){}),
            IconButton(icon: Icon(Icons.search), onPressed: null),
            IconButton(icon: Icon(Icons.bookmark_border), onPressed: null),
            IconButton(icon: Icon(Icons.person_outline), onPressed: null),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:80.0,left: 24,right: 24,bottom: 12),
        child: SingleChildScrollView(child: MainContent()),
      ),
    );
  }
}
