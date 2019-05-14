import 'package:flutter/material.dart';
import 'package:flutter_demo_app/main.dart';


class SecondPage extends StatelessWidget {
  static final String pageName = "second";
  final List<String> list;

  SecondPage(Key key, this.list) : super(key:key);

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