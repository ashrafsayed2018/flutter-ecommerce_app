import 'package:ecommerce_wael/api_links.dart';
import 'package:ecommerce_wael/core/class/crud.dart';

class RegisterData {
  Crud crud;

  RegisterData(this.crud);

  register(String username, String email, String password, String phone) async {
    var response = await crud.postData(
      AppLink.register,
      {
        'name': username,
        'email': email,
        'password': password,
        'password_confirmation': password,
        'phone': phone,
      },
    );

    return response.fold((l) => l, (r) => r);
  }
}
