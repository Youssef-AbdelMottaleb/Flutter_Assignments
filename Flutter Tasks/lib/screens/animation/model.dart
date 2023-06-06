class ModelAnimation {

  late final bool success;
  late final List<Data> data;

  ModelAnimation.fromJson(Map<String, dynamic> json){
    success = json['success'];
    data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
  }


}

class Data {

  late final int animeId;
  late final String animeName;
  late final String animeImg;

  Data.fromJson(Map<String, dynamic> json){
    animeId = json['anime_id'];
    animeName = json['anime_name'];
    animeImg = json['anime_img'];
  }


}
