import 'package:flutter/material.dart';


class Data1{

  final bool success;
  final String title;
  final String type;
  final String coverUrl;
  final List<components> Components;

  Data1 ({required this.success , required this.title , required this.type , required this.coverUrl , required this.Components});

  factory Data1.fromJson(Map<String , dynamic> json)
  {
    return Data1(
      success: json['success'],
      title: json['title'] ,
      type: json['type'] ,
      coverUrl: json['coverUrl'],
      Components: parseComponents(json),
    );
  }

  static List<components> parseComponents(componentsJson)
  {
    var list = componentsJson['components'] as List;
    List<components> componentList = list.map((data) => components.fromJson(data)).toList();
    return componentList;
  }

}

class components {

   final String type;
   final String url;
   final String title;
   final String desc;

   components({required this.type , required this.url , required this.desc , required this.title});

   factory components.fromJson(Map<String , dynamic> json)
   {
     return components(type: json['type'], url: json['url'], desc: json['desc'], title: json['title']);
   }
}