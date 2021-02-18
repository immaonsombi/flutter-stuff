import 'package:flutter/material.dart';
import 'post.dart';
import 'postlList.dart';
import 'textinputWidget.dart';
class Myhomepage extends StatefulWidget {
  final String name;

  Myhomepage(this.name);
  @override
  _MyhomepageState createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  List<Post> posts = [];

  void newPost(String text) {
    this.setState(() {
      posts.add(new Post(text,widget.name));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("hello world")),
        body: Column(children: <Widget>[
          Expanded(child: PostList(this.posts)),
          TextInputWidget(this.newPost),
        ]));
    //Column(children: <Widget>[Testwidget(),Testwidget(),Testwidget()],));
  }
}