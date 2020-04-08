import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_app/config/httpHeaders.dart';

import '../config/service_url.dart';

// 获取首页主题内容
Future getHomePageContent() async {
  try {
    print('开始获取首页数据..........');
    Response response;
    Dio dio = new Dio();
    dio.options.contentType =
        ContentType.parse("applicaiton/x-www-form-urlencode").toString();
    var formData = {'lon': '115.02932', 'lat': '34.76189'};
    response = await dio.post(servicePath['homePageContent'], data: formData);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('后端接口出现异常。');
    }
  } catch (e) {
    return print("ERROR: ========> $e");
  }
}

Future getHomeBanner() async {
  try {
    print('开始获取书友群Banner');
    Response response;
    Dio dio = new Dio();
    dio.options.headers = xHttpHeaders;
    var FormData = {
      'channel': 'napp_1738',
      'sign': 'fa8d76d6adf7766d633c0e3285844283',
      'versionName': '1.43.0.765',
      'deviceId': '5f869608d3d58742',
      'uuid': '67ffc5aa-7757-49ff-896b-20609f67793f',
      'userKey': '142cba83f07edea7347b85aa5145ede0',
      'versionCode': '765',
      's':
          'eyJrIjoiMzgyODU5NjhkN2YyNDViM2VhMDhiZjQ2ZTA1YTQ2MTQiLCJTIjoiamluZ3l1IiwidiI6IjEuMCIsImEiOjEsIkwiOjEzLCJsIjoxNTg2MjU0MjA4LCJyIjowLCJzIjoiNDc3N2RkZTFkYzg4MTNiYTk2ZDIyYjJhZTY0MTNmNjMifQ==',
      'u':
          'eyJxIjoiNDAwMDAzMTMzODMzNTc0IiwiTSI6IiIsIm4iOiIlUjUlTjQlTjclUjUlOTYlTzUxMjMiLCJpIjoiaHR0cDpcL1wvdWMtaW1hZ2UuNTIweHN0LmNvbVwvaGVhZFwvNDAwMDAzMTMzODMzNTc0XC8xNTgwOTc4NjkxMDAwLmpwZyIsInMiOiIxIiwibSI6MTU4MTkyMTkwMCwiYiI6IjE5OTMtMi03In0=',
      'osType': '0',
      'imei': '866220033193449',
      'appKey': '201020412',
      'interfaceCode': '2',
      'apiLevel': '26',
      'androidId': '5f869608d3d58742'
    };
    String url =
        'https://community.520xst.com/ApiXst/getGroupBanner?channel=napp_1738&sign=fa8d76d6adf7766d633c0e3285844283&versionName=1.43.0.765&deviceId=5f869608d3d58742&uuid=67ffc5aa-7757-49ff-896b-20609f67793f&userKey=142cba83f07edea7347b85aa5145ede0&versionCode=765&s=eyJrIjoiMzgyODU5NjhkN2YyNDViM2VhMDhiZjQ2ZTA1YTQ2MTQiLCJTIjoiamluZ3l1IiwidiI6IjEuMCIsImEiOjEsIkwiOjEzLCJsIjoxNTg2MjU0MjA4LCJyIjowLCJzIjoiNDc3N2RkZTFkYzg4MTNiYTk2ZDIyYjJhZTY0MTNmNjMifQ%3D%3D&u=eyJxIjoiNDAwMDAzMTMzODMzNTc0IiwiTSI6IiIsIm4iOiIlUjUlTjQlTjclUjUlOTYlTzUxMjMiLCJpIjoiaHR0cDpcL1wvdWMtaW1hZ2UuNTIweHN0LmNvbVwvaGVhZFwvNDAwMDAzMTMzODMzNTc0XC8xNTgwOTc4NjkxMDAwLmpwZyIsInMiOiIxIiwibSI6MTU4MTkyMTkwMCwiYiI6IjE5OTMtMi03In0%3D&osType=0&imei=866220033193449&appKey=201020412&interfaceCode=2&apiLevel=26&androidId=5f869608d3d58742';
//    response = await dio.get(url);
    response =
        await dio.post(servicePath['homeBanner'], queryParameters: FormData);
    if (response.statusCode == 200) {
      print(response.data.toString());
      return response.data;
    } else {
      throw Exception('后端接口出现异常。');
    }
  } catch (e) {
    return print("ERROR: ========> $e");
  }
}
