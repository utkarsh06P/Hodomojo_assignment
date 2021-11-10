import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'contentpage.dart';
import 'package:async/async.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model.dart';
import 'main.dart';

class centerPage extends StatefulWidget {
  const centerPage({Key? key}) : super(key: key);

  @override
  _centerPageState createState() => _centerPageState();
}

class _centerPageState extends State<centerPage> {


  Future loadDataFromAssets() async {
    return await rootBundle.loadString('assets/contentfile.json');
  }
  Future loadData() async {
    String jsonString = await loadDataFromAssets();
    final jsonResponse = json.decode(jsonString);
    Data1 data1 = Data1.fromJson(jsonResponse);
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadDataFromAssets(),
      builder: (BuildContext context , AsyncSnapshot snapshot) {
        return Container(
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 50,
                left: 320,
                child: Container(
                  height: 45,
                  width: 45,
                  child: const Icon(Icons.settings, color: Colors.grey,
                    size: 45,
                  ),
                ),
              ),
              Positioned(
                top: 140,
                left: 100,
                child: ClipOval(
                  child: Image.asset('Images/images.png'),
                ),),
              Positioned(
                top: 390,
                left: 155,
                child: ElevatedButton(
                  onPressed: () =>
                      showModalBottomSheet(

                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              )
                          ),
                          context: context, builder: (context) => buildSheet()),
                  child: const Text('click me'),
                ),)
            ],
          ),
        );
      }
    );
  }
}

