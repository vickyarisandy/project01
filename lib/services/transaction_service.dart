import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project01/models/topup_form_model.dart';
import 'package:project01/services/auth_service.dart';
import 'package:project01/shared/shared_values.dart';

class TransactionService {
  Future<String> topUp(TopupFormModel data) async{
    try{
      final token = await AuthService().getToken();
      final res = await http.post(
        Uri.parse(
          '$baseUrl/top_ups',
        ),
        headers: {
          'Authorization' : token,
        },
        body: data.toJson(),
      );

      if(res.statusCode == 200){
        return jsonDecode(res.body)['redirect_url'];
      }
      throw jsonDecode(res.body)['message'];
    }catch(e){
      rethrow;
    }
  }
}