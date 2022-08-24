import 'package:ecommerce_wael/api_links.dart';
import 'package:ecommerce_wael/core/class/crud.dart';

class ResetPasswordData {
  Crud crud;

  ResetPasswordData(this.crud);

  resetPassword(
      String password, String passwordConfirmation, String email) async {
    var response = await crud.postData(
      AppLink.resetPassword,
      {
        'password': password,
        'password_confirmation': passwordConfirmation,
        'email': email,
      },
    );

    return response.fold((l) => l, (r) => r);
  }
}
