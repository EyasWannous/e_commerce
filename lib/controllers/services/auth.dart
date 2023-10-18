import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Auth extends GetxController {
  // final Econnect api;
  // final isLoading = false.obs;
  // Auth(this.api);

  // Future<void> fetchData(dynamic m) async {
  //   isLoading.value = true;
  //   final response = await api.postSignin(m);
  //   if (response.statusCode == 200) {
  //     // Handle successful response
  //   } else {
  //     // Handle error
  //   }
  //   isLoading.value = false;
  // }

  Future<void> postsignin() async {
    http.Response response = await http.post(
      Uri.parse(''),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      // do something
    } else {
      // dont do anything
    }
  }

  Future<void> postregister() async {
    http.Response response = await http.post(
      Uri.parse(''),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      // do something
    } else {
      // dont do anything
    }
  }
}
