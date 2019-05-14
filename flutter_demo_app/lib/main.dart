import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  List<String> _getList(){
    List<String> strList = List<String>.generate(100, (i)=> WordPair.random().asLowerCase);
    return strList;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Field',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: TestListViewPage(key, _getList()),
    );
  }
}

class TestListViewPage extends StatelessWidget {

  final List<String> list;

  TestListViewPage(Key key, this.list) : super(key:key);

  @override
  Widget build(BuildContext context) {
    int length = list.length;

    return Scaffold(
      appBar: AppBar(
        title: Text("Test Listview"),
      ),
      body: Center(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              childAspectRatio: 1.333,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 2.0
          ),
          padding: EdgeInsets.all(10),
          children: <Widget>[
            Image.network(
                "https://cdn.pixabay.com/photo/2016/08/03/14/24/roses-1566792_960_720.jpg",
              fit: BoxFit.fill,
            ),
            Image.network(
              "https://cdn.pixabay.com/photo/2016/08/03/14/24/roses-1566792_960_720.jpg",
              fit: BoxFit.fill,
            ),
            Image.network(
              "https://cdn.pixabay.com/photo/2016/08/03/14/24/roses-1566792_960_720.jpg",
              fit: BoxFit.fill,
            ),
            Image.network(
              "https://cdn.pixabay.com/photo/2016/08/03/14/24/roses-1566792_960_720.jpg",
              fit: BoxFit.fill,
            ),
            Image.network(
              "https://cdn.pixabay.com/photo/2016/08/03/14/24/roses-1566792_960_720.jpg",
              fit: BoxFit.fill,
            ),
            Image.network(
              "https://cdn.pixabay.com/photo/2016/08/03/14/24/roses-1566792_960_720.jpg",
              fit: BoxFit.fill,
            ),
            Image.network(
              "https://cdn.pixabay.com/photo/2016/08/03/14/24/roses-1566792_960_720.jpg",
              fit: BoxFit.fill,
            ),
            Image.network(
              "https://cdn.pixabay.com/photo/2016/08/03/14/24/roses-1566792_960_720.jpg",
              fit: BoxFit.fill,
            )
          ],
        ),
//        child: ListView.builder(
//            itemBuilder: (context, index){
//              return ListTile(
//                leading: Icon(Icons.list),
//                  title: Text("${list[index]}"),
//                  subtitle: Text("${list[length - 1 - index]}"),
//                trailing: Image.network("https://cdn.pixabay.com/photo/2016/08/03/14/24/roses-1566792_960_720.jpg"),
//              );
//            },
//          itemCount: length,
//        ),

//        child: ListView(
//          scrollDirection: Axis.vertical,
//          children: <Widget>[
//            Container(
//              width: 100,
//              height: 400,
//              child: Image.network(
//                  "https://cdn.pixabay.com/photo/2016/08/03/14/24/roses-1566792_960_720.jpg",
//                fit: BoxFit.fitHeight,
//              ),
//            ),
//            Container(
//              width: 100,
//              height: 400,
//              child: Image.network(
//                "https://images.unsplash.com/photo-1500382017468-9049fed747ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80",
//                fit: BoxFit.fitHeight,
//              ),
//            ),
//            Container(
//              width: 100,
//              height: 400,
//              child: Image.network(
//                "https://cdn.pixabay.com/photo/2016/08/03/14/24/roses-1566792_960_720.jpg",
//                fit: BoxFit.fitHeight,
//              ),
//            ),
//            Container(
//              width: 100,
//              height: 400,
//              child: Image.network(
//                "https://images.unsplash.com/photo-1500382017468-9049fed747ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80",
//                fit: BoxFit.fitHeight,
//              ),
//            ),
//          ],
//        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
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

