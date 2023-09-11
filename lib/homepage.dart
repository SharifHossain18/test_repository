
// import 'dart:html';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<dynamic, dynamic>users={};
  List<dynamic> user=[];
  List<dynamic> item=[];


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
        centerTitle: true,
      ),
        body: ListView.builder(
        itemCount: item.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text("${item[index]}"),
          );

        }),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchData),
    );
  }

  void fetchData() async{
    final response=await http.get(Uri.parse("https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&hourly=temperature_2m"));
    final body=response.body;
    final json=jsonDecode(body);
    users=json;
    item.add(users['latitude']);
    item.add(users['longitude']);
    item.add(users['elevation']);
    item.add(users['hourly']['temperature_2m'][users.length-1]);
    setState(() {
      print(users['hourly']['temperature_2m'][users.length-1]);
      
    });
    // final users=json['hourly']['temperature_2m'];
    // print(users[users.length-1]);


  }
}