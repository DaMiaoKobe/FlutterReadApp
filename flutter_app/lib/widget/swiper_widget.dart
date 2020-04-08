import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import '../mapping/banner/banner.dart';

// 首页轮播组件
class SwiperWidget extends StatelessWidget {
  final List<BannerInfo> list;

  SwiperWidget({this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 333,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          BannerInfo info = list[index];
          return Image.network(info.banner, fit: BoxFit.fill);
        },
        itemCount: list?.length,
        pagination: SwiperPagination(),
        autoplay: true,
      ),
    );
  }
}
