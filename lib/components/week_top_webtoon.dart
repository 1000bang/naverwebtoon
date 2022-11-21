import 'package:flutter/material.dart';

class WeekTopWebtoon extends StatelessWidget {
  const WeekTopWebtoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.0),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                Text(
                  '인기 수직 상승!',
                  style: TextStyle(),
                ),
                Text(
                  '이번 주 급상승 TOP 10!',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          _buildWeekTopWebtoonList()
        ],
      ),
    );
  }

  _buildWeekTopWebtoonList() {
    return Container(
      // width: 100,
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              _buildWeekTopWebtoon('성경', '1', '성경의 역사', '경민'),
              SizedBox(
                width: 10,
              ),
              _buildWeekTopWebtoon('이말년', '2', '이말년 서유기', '이말년'),
              SizedBox(
                width: 10,
              ),
              _buildWeekTopWebtoon('퍼니', '3', '퍼니게임', '배진수'),
              SizedBox(
                width: 10,
              ),
              _buildWeekTopWebtoon('광마', '4', '광마회귀', 'JP/이히'),
              SizedBox(
                width: 10,
              ),
              _buildWeekTopWebtoon('서울역', '5', '서울역 드루이드', '문성호/활성곰'),
              SizedBox(
                width: 10,
              ),
              _buildWeekTopWebtoon('외지주2', '6', '외모지상주의', '박태준'),
              SizedBox(
                width: 10,
              ),
              _buildWeekTopWebtoon('연애혁명', '7', '연애혁명', '232'),
              SizedBox(
                width: 10,
              ),
              _buildWeekTopWebtoon('전독시', '8', '전지적 독자 시점', 'UMI/슬리피-C'),
              SizedBox(
                width: 10,
              ),
              _buildWeekTopWebtoon('급식아빠', '9', '급식아빠', '김재한'),
              SizedBox(
                width: 10,
              ),
              _buildWeekTopWebtoon('김부장', '10', '김부장', '박태준'),
            ],
          )
        ],
      ),
    );
  }

  _buildWeekTopWebtoon(imageName, ranking, title, author) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/$imageName.png',
                fit: BoxFit.cover,
              ),
              Positioned(
                child: Container(
                  alignment: Alignment.center,
                  width: 30,
                  height: 30,
                  color: Colors.green,
                  child: Text(
                    ranking,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 10),
            ),
          ),
          Text(
            author,
            style: TextStyle(color: Colors.black, fontSize: 8),
          ),
        ],
      ),
    );
  }
}
