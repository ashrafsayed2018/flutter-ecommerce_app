import 'package:ecommerce_wael/api_links.dart';
import 'package:ecommerce_wael/core/class/crud.dart';

class VerifyCodeSignUpData {
  Crud crud;

  VerifyCodeSignUpData(this.crud);

  verify(email, verifyCode) async {
    var response = await crud.postData(
      AppLink.verifyCodeSignUp,
      {
        'email': email,
        'code': verifyCode,
      },
    );

    return response.fold((l) => l, (r) => r);
  }
}
