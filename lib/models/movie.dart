class Movie {
  int malId;
  int rank;
  String title;
  String imageUrl;
  String url;
  String type;
  int episode;
  String startDate;
  String endDate;
  int member;
  double score;

  Movie(
      this.malId,
      this.rank,
      this.title,
      this.imageUrl,
      this.url,
      this.type,
      this.episode,
      this.startDate,
      this.endDate,
      this.member,
      this.score);

  Movie.fromJson(Map<String, dynamic> json) :
        malId = json['mal_id'] == null ? 0 : json['mal_id'],
        rank =  json['rank'] == null ? 0 : json['rank'],
        title =  json['title'] == null ? '' : json['title'],
        imageUrl = json['image_url'] == null ? '' : json['image_url'],
        url = json['url'] == null ? '' : json['url'],
        type = json['type'] == null ? '' : json['type'],
        episode = json['episodes'] == null ? 0 : json['episodes'],
        startDate = json['start_date'] == null ? '' : json['start_date'],
        endDate = json['end_date'] == null ? '' : json['end_date'],
        member = json['members'] == null ? 0 : json['members'],
        score = json['score'] == 0 ? 0.0 : json['score'];
}