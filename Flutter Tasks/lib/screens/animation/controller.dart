import 'package:dio/dio.dart';
import 'package:test1/screens/animation/model.dart';

class AnimationController1
{
  Future<ModelAnimation?> getAPIData() async {
    try{
      var data = await Dio().get("https://anime-facts-rest-api.herokuapp.com/api/v1");
      Map<String,dynamic> json = data.data;

      return ModelAnimation.fromJson(json);


    } catch (error){
      print(error);
    }
    return null;
  }
}