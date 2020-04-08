import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/mapping/banner/bannerResult.dart';

import '../service/service_method.dart';
import '../widget/swiper_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String homePageContent = '正在获取数据';

  @override
  void initState() {
    getHomeBanner().then((val) {
      setState(() {
        homePageContent = val.toString();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('书架'),
        ),
        body: FutureBuilder(
          future: getHomeBanner(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var data = json.decode(snapshot.data.toString());
              print(data);
              BannerResult result = BannerResult.fromJson(data);
              return Column(
                children: <Widget>[
                  SwiperWidget(list: result.dataJson.list),
                ],
              );
            } else {
              return Center(
                child: Text('加载中'),
              );
            }
          },
        ));
  }
}
