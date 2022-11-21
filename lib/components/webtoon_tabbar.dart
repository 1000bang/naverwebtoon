import 'package:flutter/material.dart';

class MyTapBar extends StatefulWidget {
  const MyTapBar({Key? key}) : super(key: key);

  @override
  State<MyTapBar> createState() => _MyTapBarState();
}

class _MyTapBarState extends State<MyTapBar>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 10, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(
          child: _buildTabBarView(),
        ),
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
          _buildTabBarTabs('신작'),
          _buildTabBarTabs('월'),
          _buildTabBarTabs('화'),
          _buildTabBarTabs('수'),
          _buildTabBarTabs('목'),
          _buildTabBarTabs('금'),
          _buildTabBarTabs('토'),
          _buildTabBarTabs('일'),
          _buildTabBarTabs('매일'),
          _buildTabBarTabs('완결'),
        ],
      ),
    );
  }

  _buildTabBarTabs(text) {
    return SizedBox(
      width: 20,
      child: Tab(
        child: Text(
          text,
          style: TextStyle(fontSize: 10, color: Colors.black),
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
          _buildTabBarViewNew(),
          _buildTabBarViewMonday(),
          _buildTabBarViewTuesday(),
          _buildTabBarViewWednesday(),
          _buildTabBarViewThursday(),
          _buildTabBarViewFriday(),
          _buildTabBarViewSaturday(),
          _buildTabBarViewSunday(),
          _buildTabBarViewEveryday(),
          _buildTabBarViewEnd(),
        ],
      ),
    );
  }

  _buildTabBarViewNew() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9.0),
      child: ListView(
        children: [
          Image.asset(
            'assets/eventImage.png',
            width: 50,
            height: 60,
          ),
          _buildWebttonRowList(
            firstImage: '퀘지주',
            firstTitle: '퀘스트지상주의',
            firstAuthor: '박태준 만화회사',
            secondImage: '참교육',
            secondTitle: '참교육',
            secondAuthor: '채용택',
            thirdImage: '윈드',
            thirdAuthor: '조용석',
            thirdTitle: '윈드브레이커',
          ),
          _buildWebttonRowList(
            firstImage: '신화급',
            firstTitle: '신화급 귀속 아이템을 손에 넣었다.',
            firstAuthor: '정선율',
            secondImage: '뷰티풀군바리',
            secondTitle: '뷰티풀 군바리',
            secondAuthor: '설이 / 윤성원',
            thirdImage: '장씨',
            thirdAuthor: '장씨세가 호위무사',
            thirdTitle: '김인호',
          ),
        ],
      ),
    );
  }

  _buildTabBarViewMonday() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9.0),
      child: ListView(
        children: [
          Image.asset(
            'assets/eventImage.png',
            width: 50,
            height: 60,
          ),
          _buildWebttonRowList(
            firstImage: '퀘지주',
            firstTitle: '퀘스트지상주의',
            firstAuthor: '박태준 만화회사',
            secondImage: '참교육',
            secondTitle: '참교육',
            secondAuthor: '채용택',
            thirdImage: '윈드',
            thirdAuthor: '조용석',
            thirdTitle: '윈드브레이커',
          ),
          _buildWebttonRowList(
            firstImage: '신화급',
            firstTitle: '신화급 귀속 아이템을 손에 넣었다.',
            firstAuthor: '정선율',
            secondImage: '뷰티풀군바리',
            secondTitle: '뷰티풀 군바리',
            secondAuthor: '설이 / 윤성원',
            thirdImage: '장씨',
            thirdAuthor: '장씨세가 호위무사',
            thirdTitle: '김인호',
          ),
        ],
      ),
    );
  }

  _buildTabBarViewTuesday() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9.0),
      child: ListView(
        children: [
          Image.asset(
            'assets/eventImage.png',
            width: 50,
            height: 60,
          ),
          _buildWebttonRowList(
            firstImage: '퀘지주',
            firstTitle: '퀘스트지상주의',
            firstAuthor: '박태준 만화회사',
            secondImage: '참교육',
            secondTitle: '참교육',
            secondAuthor: '채용택',
            thirdImage: '윈드',
            thirdAuthor: '조용석',
            thirdTitle: '윈드브레이커',
          ),
          _buildWebttonRowList(
            firstImage: '신화급',
            firstTitle: '신화급 귀속 아이템을 손에 넣었다.',
            firstAuthor: '정선율',
            secondImage: '뷰티풀군바리',
            secondTitle: '뷰티풀 군바리',
            secondAuthor: '설이 / 윤성원',
            thirdImage: '장씨',
            thirdAuthor: '장씨세가 호위무사',
            thirdTitle: '김인호',
          ),
        ],
      ),
    );
  }

  _buildTabBarViewWednesday() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9.0),
      child: ListView(
        children: [
          Image.asset(
            'assets/eventImage.png',
            width: 50,
            height: 60,
          ),
          _buildWebttonRowList(
            firstImage: '퀘지주',
            firstTitle: '퀘스트지상주의',
            firstAuthor: '박태준 만화회사',
            secondImage: '참교육',
            secondTitle: '참교육',
            secondAuthor: '채용택',
            thirdImage: '윈드',
            thirdAuthor: '조용석',
            thirdTitle: '윈드브레이커',
          ),
          _buildWebttonRowList(
            firstImage: '신화급',
            firstTitle: '신화급 귀속 아이템을 손에 넣었다.',
            firstAuthor: '정선율',
            secondImage: '뷰티풀군바리',
            secondTitle: '뷰티풀 군바리',
            secondAuthor: '설이 / 윤성원',
            thirdImage: '장씨',
            thirdAuthor: '장씨세가 호위무사',
            thirdTitle: '김인호',
          ),
        ],
      ),
    );
  }

  _buildTabBarViewThursday() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9.0),
      child: ListView(
        children: [
          Image.asset(
            'assets/eventImage.png',
            width: 50,
            height: 60,
          ),
          _buildWebttonRowList(
            firstImage: '퀘지주',
            firstTitle: '퀘스트지상주의',
            firstAuthor: '박태준 만화회사',
            secondImage: '참교육',
            secondTitle: '참교육',
            secondAuthor: '채용택',
            thirdImage: '윈드',
            thirdAuthor: '조용석',
            thirdTitle: '윈드브레이커',
          ),
          _buildWebttonRowList(
            firstImage: '신화급',
            firstTitle: '신화급 귀속 아이템을 손에 넣었다.',
            firstAuthor: '정선율',
            secondImage: '뷰티풀군바리',
            secondTitle: '뷰티풀 군바리',
            secondAuthor: '설이 / 윤성원',
            thirdImage: '장씨',
            thirdAuthor: '장씨세가 호위무사',
            thirdTitle: '김인호',
          ),
        ],
      ),
    );
  }

  _buildTabBarViewFriday() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9.0),
      child: ListView(
        children: [
          Image.asset(
            'assets/eventImage.png',
            width: 50,
            height: 60,
          ),
          _buildWebttonRowList(
            firstImage: '퀘지주',
            firstTitle: '퀘스트지상주의',
            firstAuthor: '박태준 만화회사',
            secondImage: '참교육',
            secondTitle: '참교육',
            secondAuthor: '채용택',
            thirdImage: '윈드',
            thirdAuthor: '조용석',
            thirdTitle: '윈드브레이커',
          ),
          _buildWebttonRowList(
            firstImage: '신화급',
            firstTitle: '신화급 귀속 아이템을 손에 넣었다.',
            firstAuthor: '정선율',
            secondImage: '뷰티풀군바리',
            secondTitle: '뷰티풀 군바리',
            secondAuthor: '설이 / 윤성원',
            thirdImage: '장씨',
            thirdAuthor: '장씨세가 호위무사',
            thirdTitle: '김인호',
          ),
        ],
      ),
    );
  }

  _buildTabBarViewSaturday() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9.0),
      child: ListView(
        children: [
          Image.asset(
            'assets/eventImage.png',
            width: 50,
            height: 60,
          ),
          _buildWebttonRowList(
            firstImage: '퀘지주',
            firstTitle: '퀘스트지상주의',
            firstAuthor: '박태준 만화회사',
            secondImage: '참교육',
            secondTitle: '참교육',
            secondAuthor: '채용택',
            thirdImage: '윈드',
            thirdAuthor: '조용석',
            thirdTitle: '윈드브레이커',
          ),
          _buildWebttonRowList(
            firstImage: '신화급',
            firstTitle: '신화급 귀속 아이템을 손에 넣었다.',
            firstAuthor: '정선율',
            secondImage: '뷰티풀군바리',
            secondTitle: '뷰티풀 군바리',
            secondAuthor: '설이 / 윤성원',
            thirdImage: '장씨',
            thirdAuthor: '장씨세가 호위무사',
            thirdTitle: '김인호',
          ),
        ],
      ),
    );
  }

  _buildTabBarViewSunday() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9.0),
      child: ListView(
        children: [
          Image.asset(
            'assets/eventImage.png',
            width: 50,
            height: 60,
          ),
          _buildWebttonRowList(
            firstImage: '퀘지주',
            firstTitle: '퀘스트지상주의',
            firstAuthor: '박태준 만화회사',
            secondImage: '참교육',
            secondTitle: '참교육',
            secondAuthor: '채용택',
            thirdImage: '윈드',
            thirdAuthor: '조용석',
            thirdTitle: '윈드브레이커',
          ),
          _buildWebttonRowList(
            firstImage: '신화급',
            firstTitle: '신화급 귀속 아이템을 손에 넣었다.',
            firstAuthor: '정선율',
            secondImage: '뷰티풀군바리',
            secondTitle: '뷰티풀 군바리',
            secondAuthor: '설이 / 윤성원',
            thirdImage: '장씨',
            thirdAuthor: '장씨세가 호위무사',
            thirdTitle: '김인호',
          ),
        ],
      ),
    );
  }

  _buildTabBarViewEveryday() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9.0),
      child: ListView(
        children: [
          Image.asset(
            'assets/eventImage.png',
            width: 50,
            height: 60,
          ),
          _buildWebttonRowList(
            firstImage: '퀘지주',
            firstTitle: '퀘스트지상주의',
            firstAuthor: '박태준 만화회사',
            secondImage: '참교육',
            secondTitle: '참교육',
            secondAuthor: '채용택',
            thirdImage: '윈드',
            thirdAuthor: '조용석',
            thirdTitle: '윈드브레이커',
          ),
          _buildWebttonRowList(
            firstImage: '신화급',
            firstTitle: '신화급 귀속 아이템을 손에 넣었다.',
            firstAuthor: '정선율',
            secondImage: '뷰티풀군바리',
            secondTitle: '뷰티풀 군바리',
            secondAuthor: '설이 / 윤성원',
            thirdImage: '장씨',
            thirdAuthor: '장씨세가 호위무사',
            thirdTitle: '김인호',
          ),
        ],
      ),
    );
  }

  _buildTabBarViewEnd() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9.0),
      child: ListView(
        children: [
          Image.asset(
            'assets/eventImage.png',
            width: 50,
            height: 60,
          ),
          _buildWebttonRowList(
            firstImage: '퀘지주',
            firstTitle: '퀘스트지상주의',
            firstAuthor: '박태준 만화회사',
            secondImage: '참교육',
            secondTitle: '참교육',
            secondAuthor: '채용택',
            thirdImage: '윈드',
            thirdAuthor: '조용석',
            thirdTitle: '윈드브레이커',
          ),
          _buildWebttonRowList(
            firstImage: '신화급',
            firstTitle: '신화급 귀속 아이템을 손에 넣었다.',
            firstAuthor: '정선율',
            secondImage: '뷰티풀군바리',
            secondTitle: '뷰티풀 군바리',
            secondAuthor: '설이 / 윤성원',
            thirdImage: '장씨',
            thirdAuthor: '장씨세가 호위무사',
            thirdTitle: '김인호',
          ),
        ],
      ),
    );
  }

  _buildWebttonRowList(
      {firstImage,
      secondImage,
      thirdImage,
      firstTitle,
      secondTitle,
      thirdTitle,
      firstAuthor,
      secondAuthor,
      thirdAuthor}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildWebtoon('assets/$firstImage.png', firstTitle, firstAuthor),
        _buildWebtoon('assets/$secondImage.png', secondTitle, secondAuthor),
        _buildWebtoon('assets/$thirdImage.png', thirdTitle, thirdAuthor),
      ],
    );
  }

  _buildWebtoon(imageName, title, author) {
    return Container(
      width: 120,
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildWebtoonListImage(imageName),
          _buildWebtoonListText(title, author),
        ],
      ),
    );
  }

  _buildWebtoonListImage(name) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        name,
        fit: BoxFit.cover,
      ),
    );
  }

  _buildWebtoonListText(title, info) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 4,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 13),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          info,
          style: TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}
