class AppLink {
  static const String baseUrl = 'http://192.168.43.49:8000/api';
  static const String users = "$baseUrl/users";

  // ========================== auth ==========================
  static const String login = "$baseUrl/auth/login";
  static const String register = "$baseUrl/auth/register";
  static const String verifyCodeSignUp = "$baseUrl/verify";

  // ========================= forgetpassword ===================
  static const String passwordEmail = "$baseUrl/password/email";
  static const String checkPasswordCode = "$baseUrl/password/code/check";
  static const String resetPassword = "$baseUrl/password/reset";
  static const String homePage = "$baseUrl/home";

  // images
  // category image url

  static const String categoryImage = "$baseUrl/category/image";

  // discounted items url

  static const String discountedItems = "$baseUrl/item/discounted";
  // item image url
  static const String itemImage = "$baseUrl/item/image";
}
