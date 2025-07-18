import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:task_app/app/constants/api_constant.dart';

class TaskApiServices {

  //=================================Task GET ===================================
  static Future<dynamic> getTask() async{
    try{
      final url=Uri.parse("${ApiConstant.mainUrl}${ApiConstant.task}");

      final response =await http.get(url);

      if(response.statusCode == 200){
        return jsonDecode(response.body);
      }
      else{
        throw Exception("Task GET failed");
      }

    }
    catch(e){

    }
  }



  //===================================Task POST ===============================
  static Future<dynamic> post(Map<String,dynamic> addTask) async{
    try{
      final url=Uri.parse("${ApiConstant.mainUrl}${ApiConstant.task}");

      final response =await http.post(
          url,
          headers: {"Content-Type":"application/json"},
          body: jsonEncode(addTask)
      );


      if(response.statusCode == 201){
        return jsonDecode(response.body);
      }
      else{
        throw Exception("Something went wrong ,task post failed");
      }

    }
    catch(e){
      rethrow ;

    }

  }




}