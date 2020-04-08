import 'package:flutter_app/mapping/banner/bannerWrap.dart';

class BannerResult {
  int status;
  String msg;
  BannerWrap dataJson;

  BannerResult({this.status, this.msg, this.dataJson});

  factory BannerResult.fromJson(Map<String, dynamic> json) {
    return BannerResult(
        status: json['status'],
        msg: json['msg'],
        dataJson: BannerWrap.fromJson(json['dataJson']));
  }
}
