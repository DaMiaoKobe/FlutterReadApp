import 'package:flutter/material.dart';
import 'package:flutter_app/mapping/navigation/community_navigation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 顶部导航栏
class TopNavigator extends StatelessWidget {
  final List<TopNavigatorInfo> navigatorList;

  TopNavigator(this.navigatorList);

  Widget _gridViewItemUi(BuildContext context, TopNavigatorInfo topNavigator) {
    return InkWell(
      onTap: () {
        print('点击了导航');
      },
      child: Column(
        children: <Widget>[
          Image.asset(
            topNavigator.imgUrl,
            width: ScreenUtil().setWidth(70),
            height: ScreenUtil().setHeight(70),
          ),
          Text(topNavigator.text)
        ],
      ),

    );
  }

  List<Widget> _getNavigatorUi(BuildContext context) {
    List<Widget> list = List();
    navigatorList.forEach((item) {
      list.add(_gridViewItemUi(context, item));
    });
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: ScreenUtil().setHeight(360),
        padding: EdgeInsets.all(12),
        child: GridView.count(
          crossAxisCount: 4,
          padding: EdgeInsets.all(5),
          children: _getNavigatorUi(context),
          physics: const NeverScrollableScrollPhysics(),
        ));
  }
}
