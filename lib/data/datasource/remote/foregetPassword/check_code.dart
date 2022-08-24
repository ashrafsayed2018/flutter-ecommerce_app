import 'package:ecommerce_wael/api_links.dart';
import 'package:ecommerce_wael/core/class/crud.dart';

class CheckCodeData {
  Crud crud;

  CheckCodeData(this.crud);

  chekCode(String code) async {
    var response = await crud.postData(AppLink.checkPasswordCode, {
      "code": code,
    });

    return response.fold((l) => l, (r) => r);
  }
}
