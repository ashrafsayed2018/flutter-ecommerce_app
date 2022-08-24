import '../class/status_request.dart';

handlingData(response) {
  if (response is StatusRequest) {
    return response;
  } else {
    if (response['status'] == "success") {
      return StatusRequest.success;
    } else if (response['status'] == "error") {
      return StatusRequest.error;
    } else {
      return StatusRequest.serverFailure;
    }
  }
}
