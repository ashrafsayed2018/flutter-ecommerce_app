class CategoryModel {
  int? id;
  String? enName;
  String? arName;
  String? image;
  String? createdAt;
  String? updatedAt;

  CategoryModel({
    this.id,
    this.enName,
    this.arName,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    enName = json['en_name'];
    arName = json['ar_name'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['en_name'] = enName;
    data['ar_name'] = arName;
    data['image'] = image;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
