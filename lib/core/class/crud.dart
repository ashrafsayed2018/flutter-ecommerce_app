import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_wael/core/class/status_request.dart';

import '../function/check_internet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkUrl), body: data);

        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);

          return Right(responseBody);
        } else if (response.statusCode == 404) {
          return const Left(StatusRequest.error);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (e) {
      return const Left(StatusRequest.serverException);
    }
  }

  Future<Either<StatusRequest, Map>> getData(String linkUrl) async {
    try {
      if (await checkInternet()) {
        var response = await http.get(Uri.parse(linkUrl));

        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);

          return Right(responseBody);
        } else if (response.statusCode == 404) {
          return const Left(StatusRequest.error);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (e) {
      return const Left(StatusRequest.serverException);
    }
  }
}
