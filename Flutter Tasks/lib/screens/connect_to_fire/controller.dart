import 'package:dio/dio.dart';
import 'package:test1/screens/connect_to_fire/model.dart';

class ConnectToFirebaseController
{
  Future<MoviesData?> getAPIData() async {
    try{
      var data = await Dio().get("https://api.themoviedb.org/3/discover/movie?api_key=2001486a0f63e9e4ef9c4da157ef37cd&page=1");
      Map<String,dynamic> json = data.data;

      return MoviesData.fromJson(json);


    } catch (error){
      print(error);
    }
    return null;
  }
}