import 'dart:convert';

import 'package:http/http.dart' as http ;
import 'package:project01/services/auth_service.dart';
import 'package:project01/shared/shared_values.dart';

import '../models/user_edit_form_model.dart';

class UserService{
  Future<void> updateUser(UserEditFormModel data) async{
    try{
      final token = await AuthService().getToken();
      final res = await http.put(
        Uri.parse(
            '$baseUrl/users'
        ),
        body: data.toJson(),
        headers: {
          'Authorization' : token,
        },
      );

      if(res.statusCode != 200){
        throw jsonDecode(res.body)['message'];
      }
    }catch(e){
      rethrow;
    }
  }
}