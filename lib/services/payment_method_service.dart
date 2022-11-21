import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project01/models/payment_method_model.dart';
import 'package:project01/services/auth_service.dart';
import 'package:project01/shared/shared_values.dart';
class PaymentMethodService{

  Future<List<PaymentMethodModel>> getPaymentMethod() async{
    try{
      final token = await AuthService().getToken();
      final res = await http.get(
        Uri.parse(
          '$baseUrl/payment_methods',
        ),
        headers: {
          'Authorization': token,
        }
      );

      if(res.statusCode == 200){
        return List<PaymentMethodModel>.from(jsonDecode(res.body)
            .map((paymentMethod) => PaymentMethodModel.fromJson(paymentMethod)))
            .toList();
      }else{
        throw jsonDecode(res.body)['message'];
      }
    }catch(e){
      rethrow;
    }
  }
}