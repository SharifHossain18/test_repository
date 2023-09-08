// import 'package:flutter/material.dart';
// // import 'package:flutter_test_project/controllers/home_controller.dart';
// // import 'package:flutter_test_project/screens/home_page.dart';
// // import 'package:flutter_test_project/screens/home_service.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;

// void main(){
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//    HomePage({super.key});

//   HomeController homeController=Get.put(HomeController());

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

// class HomeController extends GetxController{

//   late HomeService homeservice;


//   @override
//   void onInit() {
  
//     homeservice=HomeService();
//     getUserData();
//     super.onInit();
//   }

//   void getUserData() async{

//     http.Response response=  await homeservice.getData();



//   }



// }

// class HomeService{

//   Future <http.Response> getData() async{
   

//     http.Response response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
   

//     print(response.body);

//     return response;


//   }

// }





// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;


// void main(){
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }


// class HomePage extends StatelessWidget {
//    HomePage({super.key});

//   HomeController homecontroller =Get.put(HomeController());

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }



// class HomeController extends GetxController{
  

// @override
//   void onInit() {
//     // TODO: implement onInit
//     getData();
//     super.onInit();
//   }



//   Future <http.Response> getData() async{
//     http.Response response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

//     print(response.body);

//     return response;
//   }
   
// }


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
   HomePage({super.key});

  HomeController homecontroller=Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class HomeController extends GetxController{

  @override
  void onInit() {
    // TODO: implement onInit
    getData();
    super.onInit();
  }

   Future <http.Response> getData() async{

      http.Response response=await http.get(Uri.parse("https://api.api-ninjas.com/v1/country?name=United States"));
      // http.Response response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));


      List<dynamic> data=jsonDecode(response.body);

      print(response.body);

      return response;

   }


}