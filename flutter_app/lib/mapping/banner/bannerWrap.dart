import 'banner.dart';

class BannerWrap {
  List<BannerInfo> list;

  BannerWrap({this.list});

  factory BannerWrap.fromJson(Map<String, dynamic> json) {
    final orignList = json['list'] as List;
    List<BannerInfo> data =
        orignList.map((value) => BannerInfo.fromJson(value)).toList();
    return BannerWrap(list: data);
  }
}
