import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/mapping/banner/bannerResult.dart';
import 'package:flutter_app/mapping/navigation/community_navigation.dart';
import 'package:flutter_app/widget/top_navigator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../service/service_method.dart';
import '../widget/swiper_widget.dart';

/// 社区首页
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '社区',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: FutureBuilder(
          future: getHomeBanner(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var data = json.decode(snapshot.data.toString());
              print(data);
              BannerResult result = BannerResult.fromJson(data);
              return SingleChildScrollView(
                  child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    // 轮播组件
                    SwiperWidget(list: result.dataJson.list),
                    // 顶部导航栏组件
                    TopNavigator(_initNavigatorBar()),
                  ],
                ),
              ));
            } else {
              return Center(
                child: Text(
                  "加载中...",
                  style: TextStyle(
                      fontSize:
                          ScreenUtil().setSp(28, allowFontScalingSelf: false)),
                ),
              );
            }
          },
        ));
  }

  /// 初始化社区顶部导航栏
  List<TopNavigatorInfo> _initNavigatorBar() {
    List<TopNavigatorInfo> list = List();
    list.add(TopNavigatorInfo('images/ic_discover_category.png', '男生书荒'));
    list.add(TopNavigatorInfo('images/ic_discover_category.png', '男生书荒'));
    list.add(TopNavigatorInfo('images/ic_discover_category.png', '男生书荒'));
    list.add(TopNavigatorInfo('images/ic_discover_category.png', '男生书荒'));
    list.add(TopNavigatorInfo('images/ic_discover_category.png', '男生书荒'));
    list.add(TopNavigatorInfo('images/ic_discover_category.png', '男生书荒'));
    list.add(TopNavigatorInfo('images/ic_discover_category.png', '男生书荒'));
    list.add(TopNavigatorInfo('images/ic_discover_category.png', '男生书荒'));
    return list;
  }
}
