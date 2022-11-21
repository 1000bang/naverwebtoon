import 'package:flutter/material.dart';

import '../../components/main_appbar.dart';
import '../../textstyle.dart';
import 'b_d_components/best_dojeon_button.dart';
import 'b_d_components/best_dojeon_header.dart';


class BestDojeonPage extends StatefulWidget {
  const BestDojeonPage({Key? key}) : super(key: key);

  @override
  State<BestDojeonPage> createState() => _BestDojeonPageState();
}

class _BestDojeonPageState extends State<BestDojeonPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 14, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          MainAppBar(title: "베스트 도전", icons: Icons.search),
          BestDojeonHeader(),
          _buildTabBar(),
          BestDojeonButton(),
          Expanded(child: _buildTabBarView()),
        ],
      ),
    );
  }

  _buildTabBar() {
    return TabBar(
      isScrollable: true,
      controller: _tabController,
      indicatorColor: Colors.green,
      tabs: [

        Tab(child: Text('전체', style:  TextStyle(fontSize: 10, color: Colors.black87))),
        Tab(child: Text('순정', style:  TextStyle(fontSize: 10, color: Colors.black87))),
        Tab(child: Text('액션', style:  TextStyle(fontSize: 10, color: Colors.black87))),
        Tab(child: Text('스포츠', style:  TextStyle(fontSize: 10, color: Colors.black87))),
        Tab(child: Text('스릴러', style:  TextStyle(fontSize: 10, color: Colors.black87))),
        Tab(child: Text('판타지', style:  TextStyle(fontSize: 10, color: Colors.black87))),
        Tab(child: Text('드라마', style:  TextStyle(fontSize: 10, color: Colors.black87))),
        Tab(child: Text('일상', style:  TextStyle(fontSize: 10, color: Colors.black87))),
        Tab(child: Text('개그', style:  TextStyle(fontSize: 10, color: Colors.black87))),
        Tab(child: Text('감성', style:  TextStyle(fontSize: 10, color: Colors.black87))),
        Tab(child: Text('무협/사극', style:  TextStyle(fontSize: 10, color: Colors.black87))),
        Tab(child: Text('스토리', style:  TextStyle(fontSize: 10, color: Colors.black87))),
        Tab(child: Text('에피소드', style:  TextStyle(fontSize: 10, color: Colors.black87))),
        Tab(child: Text('옴니버스', style:  TextStyle(fontSize: 10, color: Colors.black87))),
      ],
    );
  }

  _buildTabBarView() {
    return Container(
      child: TabBarView(
        controller: _tabController,
        children: [
          _buildTabBarViewAll(),
          _buildTabBarViewSoonJeong(),
          _buildTabBarViewAction(),
          _buildTabBarViewSports(),
          _buildTabBarViewThriller(),
          _buildTabBarViewFantasy(),
          _buildTabBarViewDrama(),
          _buildTabBarViewiLSang(),
          _buildTabBarViewGag(),
          _buildTabBarViewGamSung(),
          _buildTabBarViewMuheop(),
          _buildTabBarViewStory(),
          _buildTabBarViewEpisod(),
          _buildTabBarViewOmnibus(),
        ],
      ),
    );
  }

  _buildTabBarViewRowList(var tapImage, var tapTitle, var tapId, var tapExplain,
      var grade, var date) {
    return SizedBox(
      width: double.infinity,
      height: 130,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, bottom: 15.0),
        child: Row(
          children: [
            Image.asset("assets/bestdojeon/${tapImage}.jpg"),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tapTitle, style: h6()),
                  Text(tapId, style: h0()),
                  Text(tapExplain, style: h0()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.star, color: Colors.redAccent),
                      Text(grade, style: h0()),
                      SizedBox(width: 10),
                      Text(date, style: h0()),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildTabBarViewAll() {
    return ListView(
      children: [
        _buildTabBarViewRowList("all1", "그래도 조금 공부되는 만화", "sssj****", "황당 수업 진행", "9.42", "18:18"),
        _buildTabBarViewRowList("all2", "파운드캣", "poun****", "식빵을 닮은 고양이", "9.89", "18:02"),
        _buildTabBarViewRowList("all3", "제목이 7080 만화", "kimk****", "7080이야기", "9.89", "17:00"),
        _buildTabBarViewRowList("all4", "유아독존", "sj83****", "주인공의 성장극", "6.63", "13:48"),
        _buildTabBarViewRowList("all5", "산으로 가는 부부", "kora****", "산에서 일하면", "9.85", "11:37"),
        _buildTabBarViewRowList("all6", "불사소년", "yude****", "죽지 않는 소년", "8.42", "00:08"),
      ],
    );
  }

  _buildTabBarViewSoonJeong() {
    return ListView(
      children: [
        _buildTabBarViewRowList("soonjeong1", "옥탑방 고양이", "miso****", "어쩌다 동거", "9.54", "22.11.20"),
        _buildTabBarViewRowList("soonjeong2", "여신님의 계약남은 불로불사!?", "wjdd****", "여 계 불", "9.39", "22.11.20"),
        _buildTabBarViewRowList("soonjeong3", "웨일즈", "k0****", "인어와 인어사냥꾼", "9.90", "22.11.19"),
        _buildTabBarViewRowList("soonjeong4", "원래부터 아무것도 없었던 세계", "mimi****", "원더랜드는실존하나요", "9.84", "22.11.19"),
        _buildTabBarViewRowList("soonjeong5", "시놉시스", "joy_****", "작업실 로맨스", "9.74", "22.11.18"),
        _buildTabBarViewRowList("soonjeong6", "감성 다방", "crus****", "휴머니즘 귀농 카페", "9.38", "22.11.18"),
      ],
    );
  }

  _buildTabBarViewAction() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          _buildTabBarViewRowList("action1", "무적철인 반대가리", "yoon****", "올드스쿨 로봇액션", "9.06", "22.11.20"),
          _buildTabBarViewRowList("action2", "가스맨", "mski****", "엥 내가 히어로?", "8.91", "22.11.19"),
          _buildTabBarViewRowList("action3", "검의계승자", "pdob****", "판타지", "9.70", "22.11.19"),
          _buildTabBarViewRowList("action4", "더 퀑 스핀오프", "wonj****", "덴경대 집합!", "9.27", "22.11.19"),
          _buildTabBarViewRowList("action5", "용사연구소", "rdch****", "마법장비 연구한다!", "9.62", "22.11.19"),
          _buildTabBarViewRowList("action6", "악마법소녀", "hami****", "마법과 내뱉은 말", "9.89", "22.11.17"),
        ],
      ),
    );
  }

  _buildTabBarViewSports() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          _buildTabBarViewRowList("sports1", "어쩌다 주짓수", "anis****", "어쩌다 주짓수 코치", "9.67", "22.11.18"),
          _buildTabBarViewRowList("sports2", "죽탱이", "imlu****", "MMA 격투 성장기", "8.34", "22.11.11"),
          _buildTabBarViewRowList("sports3", "우리들만의 싸이커", "tjtm****", "프리스타일축구웹툰", "7.90", "22.11.05"),
          _buildTabBarViewRowList("sports4", "데드리프트", "spid****", "리프터를 위한 웹툰", "9.78", "22.11.04"),
          _buildTabBarViewRowList("sports5", "드림걸즈", "thre****", "그녀들의 농구이야기", "9.00", "22.09.16"),
          _buildTabBarViewRowList("sports6", "원포인트", "joko****", "배구를통한성장드라마", "8.67", "22.09.07"),
        ],
      ),
    );
  }

  _buildTabBarViewThriller() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          _buildTabBarViewRowList("thriller1", "불사소년", "ude****", "죽지 않는 소년", "8.42", "00:08"),
          _buildTabBarViewRowList("thriller2", "펜타가드", "eunu****", "신이 되어버린 인간", "9.69", "22.11.19"),
          _buildTabBarViewRowList("thriller3", "원래 아무것도 없었던 세계", "mimi****", "원더랜드는 실존하나요", "9.84", "22.11.19"),
          _buildTabBarViewRowList("thriller4", "좀비 플래너", "jo****", "좀비 플래너", "9.82", "22.11.19"),
          _buildTabBarViewRowList("thriller5", "조의 괴기만화", "ky****", "괴기한 만화", "9.78", "22.11.18"),
          _buildTabBarViewRowList("thriller6", "마피아게임에 어서오세요", "sinc****", "살인 마피아게임", "9.63", "22.11.17"),
          _buildTabBarViewRowList("thriller7", "24시간", "jeeu****", "살인마를피해탈출하라", "9.66", "22.11.16"),
        ],
      ),
    );
  }

  _buildTabBarViewFantasy() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          _buildTabBarViewRowList("fantasy1", "꽃도둑", "dydr****", "부활꽃을 훔치자!", "9.02", "12:19"),
          _buildTabBarViewRowList("fantasy2", "불사소년", "yude****", "죽지않는 소년", "8.42", "00:08"),
          _buildTabBarViewRowList("fantasy3", "우주동물원", "cjfa****", "우주동물원", "9.78", "22.11.20"),
          _buildTabBarViewRowList("fantasy4", "일월의선화", "mila****", "판타지", "9.80", "22.11.20"),
          _buildTabBarViewRowList("fantasy5", "HAPPY BIRTHDAY", "oliv****", "로맨스판타지", "9.61", "22.11.20"),
          _buildTabBarViewRowList("fantasy6", "마음", "half****", "천사들의 학교생활", "9.47", "22.11.20"),
        ],
      ),
    );
  }

  _buildTabBarViewDrama() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          _buildTabBarViewRowList("drama1", "제목이 7080만화", "kimk****", "7080 이야기", "9.89", "17:00"),
          _buildTabBarViewRowList("drama2", "북한의 아이", "qzqz****", "복희의 성장 스토리", "9.03", "01:23"),
          _buildTabBarViewRowList("drama3", "곰팡남녀", "sosi****", "보통의 경계", "9.90", "22.11.20"),
          _buildTabBarViewRowList("drama4", "결혼잔혹사", "choj****", "10년차 맞벌이부부", "9.74", "22.11.20"),
          _buildTabBarViewRowList("drama5", "제제와 함께", "is****", "장애아이와 형제", "9.76", "22.11.19"),
          _buildTabBarViewRowList("drama6", "육식 토끼", "bybo****", "소심 토끼 반항기", "9.76", "22.11.18"),
        ],
      ),
    );
  }

  _buildTabBarViewiLSang() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          _buildTabBarViewRowList("ilsang1", "누루누루 음식만화", "newr****", "음식 탐닉 일상툰", "9.90", "18:32"),
          _buildTabBarViewRowList("ilsang2", "파운드캣", "poun****", "식빵을 닮은 고양이", "9.89", "18:02"),
          _buildTabBarViewRowList("ilsang3", "미필은 노하이", "mask****", "대한군필 만세!!", "9.86", "07:19"),
          _buildTabBarViewRowList("ilsang4", "우당탕 입큰이", "plan****", "입만 살았네", "9.79", "22.11.20"),
          _buildTabBarViewRowList("ilsang5", "양궁부 입니다", "haeo****", "양궁부 일상", "9.74", "22.11.20"),
          _buildTabBarViewRowList("ilsang6", "일상과 망상", "kopj****", "블랙코미디", "8.95", "22.11.19"),
        ],
      ),
    );
  }

  _buildTabBarViewGag() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          _buildTabBarViewRowList("gag1", "낯가리는 관종", "shin****", "낯가리는 관종일기", "9.82", "22.11.17"),
          _buildTabBarViewRowList("gag2", "하루땃따", "ttat****", "시트콤 같은 일상툰", "9.90", "22.11.18"),
          _buildTabBarViewRowList("gag3", "전직 히키코모리 갱생툰", "kimg****", "한 번 잡숴보슈", "9.60", "22.11.18"),
          _buildTabBarViewRowList("gag4", "고인물 연애", "comi****", "15년차 커플 일상", "9.81", "22.11.17"),
          _buildTabBarViewRowList("gag5", "괜찮아, 고3이야", "gree****", "너와나의 리얼고3툰", "9.90", "22.11.16"),
          _buildTabBarViewRowList("gag6", "오늘의 후기", "chae****", "매일 살아가는 후기", "9.77", "22.11.16"),
        ],
      ),
    );
  }

  _buildTabBarViewGamSung() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          _buildTabBarViewRowList("gamsung1", "신령의 아이", "bgyo****", "딸 바보 신령님", "9.67", "22.11.19"),
          _buildTabBarViewRowList("gamsung2", "사자머리와호깜대", "jasu****", "뻔뻔한 냥이들의일상", "9.74", "22.11.19"),
          _buildTabBarViewRowList("gamsung3", "깜빡깜빡", "qnfd****", "반짝이의 일상", "9.90", "22.11.18"),
          _buildTabBarViewRowList("gamsung4", "이딴여행", "ii****", "여행포토툰", "9.77", "22.11.17"),
          _buildTabBarViewRowList("gamsung5", "고양이와 집사", "mask****", "특별한 반려동물", "9.75", "22.11.17"),
          _buildTabBarViewRowList("gamsung6", "시한부의 첫사랑", "kate****", "생명의 은인 찾기", "9.53", "22.11.11"),
        ],
      ),
    );
  }

  _buildTabBarViewMuheop() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          _buildTabBarViewRowList("muheop1", "찔레꽃 그너머", "heet****", "임진왜란과 서민의삶", "9.80", "22.11.18"),
          _buildTabBarViewRowList("muheop2", "무쇠", "ejes****", "악과 선의 이야기", "9.81", "22.11.16"),
          _buildTabBarViewRowList("muheop3", "백발의 유성", "qorq****", "액션/로맨스판타지", "9.03", "22.10.16"),
          _buildTabBarViewRowList("muheop4", "본격 북유럽 신화 만화", "scch****", "신화 설명하는 만화", "9.90", "22.08.17"),
          _buildTabBarViewRowList("muheop5", "호구 도사", "blac****", "동양 판타지", "9.76", "22.03.26"),
          _buildTabBarViewRowList("muheop6", "광해와 이순신", "yuki****", "전쟁을 이긴 영웅들", "9.60", "21.12.29"),
        ],
      ),
    );
  }

  _buildTabBarViewStory() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          _buildTabBarViewRowList("story1", "살인교사", "twol****", "사람을 죽였습니다.", "9.58", "22.11.15"),
          _buildTabBarViewRowList("story2", "별을 향해", "jikn****", "별 여행 이야기", "9.08", "22.11.14"),
          _buildTabBarViewRowList("story3", "순임이", "yodl****", "엄마의 엄마 이야기", "9.88", "22.11.11"),
          _buildTabBarViewRowList("story4", "연하는 별로", "tige****", "서린과 연하남과 썸", "9.69", "22.11.14"),
          _buildTabBarViewRowList("story5", "제목", "아이드", "설명", "평점", "날짜"),
          _buildTabBarViewRowList("story6", "이상기온", "womp****", "아슬아슬 밀당로맨스", "9.73", "22.11.13"),
        ],
      ),
    );
  }

  _buildTabBarViewEpisod() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          _buildTabBarViewRowList("episod1", "이래봬도2학년", "drea****", "초등학교 이야기!", "9.77", "22.10.23"),
          _buildTabBarViewRowList("episod2", "예수쟁이 다이어리", "ahnc****", "예수쟁이의 일상", "9.29", "22.03.31"),
          _buildTabBarViewRowList("episod3", "막내는 다 알아요!", "rsmg****", "다섯 가족의 일상", "9.80", "22.09.03"),
          _buildTabBarViewRowList("episod4", "나홀로 짠", "is****", "혼술 이야기", "9.83", "22.06.25"),
          _buildTabBarViewRowList("episod5", "우리는 그래서 만났잖아", "zz****", "평범한 일상", "9.77", "22.12.25"),
          _buildTabBarViewRowList("episod6", "나의 카이생활", "ytte****", "카이스트 일상툰", "9.65", "22.12.24"),
        ],
      ),
    );
  }

  _buildTabBarViewOmnibus() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          _buildTabBarViewRowList("omnibus1", "신혼식물", "momo****", "원시식물인간", "9.84", "2022.11.20"),
          _buildTabBarViewRowList("omnibus2", "둘이서 아싸 라이프", "maya****", "아싸로 살아가자", "9.53", "22.10.23"),
          _buildTabBarViewRowList("omnibus3", "158동 진상부부", "hee8****", "부부의 진짜 일상", "9.48", "22.09.03"),
          _buildTabBarViewRowList("omnibus4", "국밥소녀", "is****", "국밥에 미친 소녀", "9.38", "22.03.31"),
          _buildTabBarViewRowList("omnibus5", "뭐, 좀 느리면 어때", "smfu****", "어른이 일기", "9.48", "22.10.03"),
          _buildTabBarViewRowList("omnibus6", "틈", "vamp****", "틈을파고드는 이야기", "9.85", "22.09.03"),
        ],
      ),
    );
  }
}
