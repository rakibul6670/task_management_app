import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:task_app/app/constants/api_constant.dart';

class AuthApiServices{

  // //================== GET User ==============
  // static Future<void>  getUser() async {
  //   try{
  //     final url=Uri.parse("${ApiConstant.mainUrl}${ApiConstant.user}");
  //     final response = await http.get(url);
  //     if(response.statusCode ==200){
  //       print("Fetch User : \n${jsonDecode(response.body)}");
  //       return jsonDecode(response.body);
  //     }
  //   }
  //   catch(e){
  //     print("Error: $e");
  //   }
  // }
  //


  //=================== POST User ============

  static Future<dynamic> addUser(Map<String,dynamic> addUser) async{
    try{
      final url=Uri.parse("${ApiConstant.mainUrl}${ApiConstant.user}");
      final response = await http.post(
          url,
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(addUser)
      );
      if(response.statusCode ==201){
        return jsonDecode(response.body);
      }
    }
    catch(e){
      print('Post Error : $e');
    }
  }


  //=================== PUT User ==========
  static Future<void> updateUser(Map<String,dynamic> updateUser,String id) async{
    try{
      final url=Uri.parse("${ApiConstant.mainUrl}${ApiConstant.user}/$id");
      final response = await http.put(
          url,
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(updateUser)
      );
      print("Update response : \n ${response.statusCode}");
      if(response.statusCode == 200 || response.statusCode == 204){
        // print("Update User : \n ${response.body}");
        Map<String,dynamic> allUser = jsonDecode(response.body);
        if(allUser.isNotEmpty){
          allUser['id']=updateUser;
        }
      }


    }
    catch(e){
      print("Update Error: $e");
    }
  }

}