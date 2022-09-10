import 'package:ecommerce_wael/api_links.dart';
import 'package:ecommerce_wael/core/class/crud.dart';

class HomeData {
  Crud crud;

  HomeData(this.crud);

  getData() async {
    var response = await crud.getData(AppLink.homePage);

    return response.fold((l) => l, (r) => r);
  }
}
