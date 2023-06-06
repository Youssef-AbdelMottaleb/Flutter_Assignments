class MoviesData {

  late final int page,totalPages,totalResults;
  late final List<Results> results;


  MoviesData.fromJson(Map<String, dynamic> json){
    page = json['page'];
    results = List.from(json['results']).map((e)=>Results.fromJson(e)).toList();
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

}

class Results {

  late final bool adult,video;
  late final String backdropPath,originalLanguage,originalTitle,overview,posterPath,releaseDate,title;
  late final List<int> genreIds;
  late final int id,voteCount;
  late final num popularity,voteAverage;

  Results.fromJson(Map<String, dynamic> json){
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = List.castFrom<dynamic, int>(json['genre_ids']);
    id = json['id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

}