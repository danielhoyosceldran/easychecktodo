import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import './pages/PGroups.dart';
import './pages/PList.dart';

void main() {
  runApp(EasyCheck());
}

class EasyCheck extends StatefulWidget {
  const EasyCheck({Key? key}) : super(key: key);

  @override
  State<EasyCheck> createState() => _EasyCheckState();
}

class _EasyCheckState extends State<EasyCheck> {
  late Future<Map> _data;
  StatefulWidget? _mainPage;

  @override
  void initState() {
    super.initState();
    // TODO: read json functionality
    _data = readJson();
  }
  Future<Map> readJson() async {
    print("[i] -> comenca read Json");
    final String response = await rootBundle.loadString("assets/json/data.json");
    final data = await json.decode(response);
    print(data);
    return data;
  }

  void setMainPage(StatefulWidget mainPage) {
    _mainPage = mainPage;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Check',
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: _data,
        builder: (context, snapshot) {
          //print(snapshot.connectionState);
          if(snapshot.hasData) {
            Map nonFutureData = snapshot.data as Map;
            print(nonFutureData["main"]);
            print(nonFutureData["main"].runtimeType);
            return (nonFutureData["main"] == "PGroups")
                ? PGroups(content: nonFutureData["lists"], title: nonFutureData["title"])
                : PLists(content: nonFutureData["lists"][0]["content"], title: nonFutureData["lists"][0]["title"]);
          } else if (snapshot.hasError){
            //print(snapshot.error);
            return Text("${snapshot.error}");
          }
          return Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: const Center(
                child: LinearProgressIndicator(),
              )
          );
        },
      ),
    );
  }
}