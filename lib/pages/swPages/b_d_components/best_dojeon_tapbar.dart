import 'package:flutter/material.dart';

import '../../../textstyle.dart';

class BestDojeonTapbar extends StatefulWidget {
  const BestDojeonTapbar({Key? key}) : super(key: key);

  @override
  State<BestDojeonTapbar> createState() => _MyTapBarState();
}

class _MyTapBarState extends State<BestDojeonTapbar>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 14, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        _buildTabBarBox(),
        // Expanded(
        // child: _buildTabBarView(),
        // ),
      ],
    );
  }
  _buildTabBar() {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: TabBar(
        isScrollable: true,
        controller: _tabController,
        indicatorColor: Colors.green,

        tabs: [
          _buildTabBarTabs('전체'),
          _buildTabBarTabs('순정'),
          _buildTabBarTabs('액션'),
          _buildTabBarTabs('스포츠'),
          _buildTabBarTabs('스릴러'),
          _buildTabBarTabs('판타지'),
          _buildTabBarTabs('드라마'),
          _buildTabBarTabs('일상'),
          _buildTabBarTabs('개그'),
          _buildTabBarTabs('감성'),
          _buildTabBarTabs('무협/사극'),
          _buildTabBarTabs('스토리'),
          _buildTabBarTabs('에피소드'),
          _buildTabBarTabs('옴니버스'),
        ],
      ),
    );
  }


  _buildTabBarTabs(text) {
    return SizedBox(
      child: Tab(
        child: Text(
          text,
          style: TextStyle(fontSize: 10, color: Colors.black87),
        ),
      ),
    );
  }


  _buildTabBarBox(){
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: Container(
        color: Colors.black87,
        padding: EdgeInsets.only(left: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(onTap: (){},
              child: Text("업데이트순", style: h0(),),
            ),
            SizedBox(width: 5,),
            SizedBox(child: Text(" · " , style: h0(),),width: 10),
            InkWell(onTap: (){},
              child: Text("조회순", style: h0(),),
            ),
            SizedBox(width: 5,),
            SizedBox(child: Text(" · " , style: h0(),),width: 10),
            InkWell(onTap: (){},
              child: Text("별점순", style: h0(),),
            ),
            SizedBox(width: 5,),
            SizedBox(child: Text(" · " , style: h0(),),width: 10),
            InkWell(onTap: (){},
              child: Text("제목순", style: h0(),),
            ),

          ],
        ),
      ),
    );
  }



  _buildTabBarView() {
    return Container(
      color: Colors.white,
      child: TabBarView(
        controller: _tabController,
        children: [
          // _buildTabBarViewAll(),
          // _buildTabBarViewSoonJeong(),
          // _buildTabBarViewAction(),
          // _buildTabBarViewSports(),
          // _buildTabBarViewThriller(),
          // _buildTabBarViewFantasy(),
          // _buildTabBarViewDrama(),
          // _buildTabBarViewiLSang(),
          // _buildTabBarViewGag(),
          // _buildTabBarViewGamSung(),
          // _buildTabBarViewMuheop(),
          // _buildTabBarViewStory(),
          // _buildTabBarViewEpisod(),
          // _buildTabBarViewOmnibus(),
        ],
      ),
    );
  }


}