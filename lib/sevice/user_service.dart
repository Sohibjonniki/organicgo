import 'package:dio/dio.dart';
import 'package:tas/model/user_model.dart';

class UserService {
   Future<dynamic> getUsers() async {
    try {
      Response response =
          await Dio().get("http://192.168.42.101:4000/Organico");
      print(response.data);
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      } else {
        return response.statusCode.toString();
      }
    } on DioException catch (e) {
      e.message.toString();
    }
  }
}
