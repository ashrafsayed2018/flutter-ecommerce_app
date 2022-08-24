import 'package:ecommerce_wael/api_links.dart';
import 'package:ecommerce_wael/core/class/crud.dart';

class LoginData {
  Crud crud;

  LoginData(this.crud);

  login(String email, String password) async {
    var response = await crud.postData(
      AppLink.login,
      {
        'email': email,
        'password': password,
      },
    );

    return response.fold((l) => l, (r) => r);
  }
}
