
// import 'dart:convert';

// import 'package:flutter_test_project/model/user_model.dart';
// import 'package:flutter_test_project/screens/home_service.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;


// class HomeController extends GetxController{

//   late HomeService homeService;

 

//   // bool isLoading=true;


// @override
//   void onInit() {
//     // TODO: implement onInit
//     homeService=HomeService();
//     getUserData();
//     super.onInit();
//   }


// void getUserData() async {

// try{
//   http.Response response=  await homeService.getData();

//   if(response.statusCode==200){
//     List<dynamic > data=jsonDecode(response.body);
//     // print(data);
    

//   }

// }
// catch(exception){
//   // print(exception);
// }


// }

// }