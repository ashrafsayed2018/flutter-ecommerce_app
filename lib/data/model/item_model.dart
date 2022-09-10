import 'package:ecommerce_wael/data/model/category_model.dart';

class ItemModel {
  int? id;
  int? categoryId;
  String? arName;
  String? enName;
  String? arDescription;
  String? enDescription;
  String? price;
  int? discount;
  String? image;
  int? count;
  int? status;
  String? createdAt;
  String? updatedAt;
  CategoryModel? category;

  ItemModel(
      {this.id,
      this.categoryId,
      this.arName,
      this.enName,
      this.arDescription,
      this.enDescription,
      this.price,
      this.discount,
      this.image,
      this.count,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.category});

  ItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    arName = json['ar_name'];
    enName = json['en_name'];
    arDescription = json['ar_description'];
    enDescription = json['en_description'];
    price = json['price'];
    discount = json['discount'];
    image = json['image'];
    count = json['count'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    category = json['category'] != null
        ? CategoryModel.fromJson(json['category'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['category_id'] = categoryId;
    data['ar_name'] = arName;
    data['en_name'] = enName;
    data['ar_description'] = arDescription;
    data['en_description'] = enDescription;
    data['price'] = price;
    data['discount'] = discount;
    data['image'] = image;
    data['count'] = count;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    return data;
  }
}
