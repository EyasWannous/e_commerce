import 'package:get/get.dart';

class Econnect extends GetConnect implements GetxService {
  Econnect() {
    baseUrl = '';
  }

  Future<Response> postSignin(Map<String, dynamic> data) => post('login', data);
}
