class BannerInfo {
  int id;
  String title;
  String banner;
  String clickUrl;
  bool isBBS;
  int type;

  BannerInfo(
      {this.id, this.title, this.banner, this.clickUrl, this.isBBS, this.type});

  factory BannerInfo.fromJson(Map<String, dynamic> json) {
    return BannerInfo(
        id: json['id'],
        title: json['title'],
        banner: json['banner'],
        clickUrl: json['clickUrl'],
        isBBS: json['isBBS'],
        type: json['type']);
  }
}
