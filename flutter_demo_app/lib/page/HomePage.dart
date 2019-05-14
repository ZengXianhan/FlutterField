import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyHomePage extends StatefulWidget {
  static final String pageName = "home";

  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _randomStr = "Click to get random string";

  void _stringChange() {
    setState(() {
      final wordPair = WordPair.random();
      _randomStr = wordPair.asPascalCase;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Image.network(
          "https://cdn.pixabay.com/photo/2016/08/03/14/24/roses-1566792_960_720.jpg",
          width: 300,
          height: 500,
          fit: BoxFit.contain,
          repeat: ImageRepeat.repeat,
        ),
//        child: Container(
//          child:  Text(
//            "Flutter是一个由谷歌开发的开源移动应用软件开发工具包，用于为Android和iOS开发应用，同时也将是Google Fuchsia下开发应用的主要工具。",
//            textAlign: TextAlign.center,
//            maxLines: 3,
//            overflow: TextOverflow.ellipsis,
//            style: TextStyle(
//              fontSize: 20,
//              color: Colors.black,
//              decoration: TextDecoration.none,
//              decorationStyle: TextDecorationStyle.solid,
//            ),
//          ),
//          alignment: Alignment.topCenter,
//          width: 500,
//          height: 400,
//          padding: const EdgeInsets.fromLTRB(10,0,0,0),
//          margin: const EdgeInsets.fromLTRB(10,0,0,0),
//          decoration: new BoxDecoration(
//              gradient: const LinearGradient(
//                  colors: [Colors.blue,Colors.red,Colors.purple]
//              ),
//              border: Border.all(
//                color: Colors.amber,
//                width: 10,
//              )
//          ),
//
//        ),
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              "Flutter是一个由谷歌开发的开源移动应用软件开发工具包，用于为Android和iOS开发应用，同时也将是Google Fuchsia下开发应用的主要工具。",
//              textAlign: TextAlign.center,
//              maxLines: 3,
//              overflow: TextOverflow.ellipsis,
//              style: TextStyle(
//                fontSize: 20,
//                color: Colors.black,
//                decoration: TextDecoration.none,
//                decorationStyle: TextDecorationStyle.solid,
//              ),
//            ),
//            Text(
//              "Show demo below",
//            ),
//            Text(
//              '$_randomStr',
//              style: Theme.of(context).textTheme.body1,
//            ),

//          ],
//        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _stringChange,
        tooltip: 'Increment',
        child: Icon(Icons.announcement),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}