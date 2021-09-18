import 'package:flutter/material.dart';
import 'package:rns_task/BreweryModel.dart';

import 'ApiProvider/api_fetch.dart';
import 'BreweryDetailsScreen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BreweryList',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Brewery List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  String a="S";
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _Provider = ApiProvider();
  Future<List<BreweryModel>> list;
  bool flag=false;
  String s="ss";
  @override
  void initState() {
    callApis();
  }
  callApis() async {
    list=_Provider.getbrewerylist();
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      flag=true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: flag?_loadBreweryListView():Center(child:CircularProgressIndicator()),
    );
  }
  _loadBreweryListView() {
    return FutureBuilder(
        future: list,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BreweryDetailScreen(Brewerymodel:snapshot.data[index]),
                        ));
                      },
                      title: Text(s),
                  ));
            },
            itemCount: snapshot.data == null ? 0 : snapshot.data.length,
          );
        });
  }
}
// ${snapshot.data[index].name}