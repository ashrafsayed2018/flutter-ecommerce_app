import 'package:ecommerce_wael/api_links.dart';
import 'package:ecommerce_wael/core/class/crud.dart';

class SendResetPasswordEmailData {
  Crud crud;

  SendResetPasswordEmailData(this.crud);

  sendResetEmail(String email) async {
    var response = await crud.postData(AppLink.passwordEmail, {
      "email": email,
    });

    return response.fold((l) => l, (r) => r);
  }
}
