import 'package:flutter/material.dart';

class RecommendDropdownButton extends StatefulWidget {
  const RecommendDropdownButton({Key? key}) : super(key: key);

  @override
  State<RecommendDropdownButton> createState() =>
      _RecommendDropdownButtonState();
}

class _RecommendDropdownButtonState extends State<RecommendDropdownButton> {
  final _valueLIst = ['인기순', '여성 인기순', '남성 인기순', '최신순'];
  var _selectedValue = '인기순';

  final _themeList = ['전체 장르', '드라마', '로맨스', '학원/액션', '판타지/무협', '스릴러', '일상/개그'];
  var _selectedThemeValue = '전체 장르';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      _buildDropDownButton(),
                      _buildThemeDropDownButton(),
                    ],
                  ),
                ),
                Text(
                  '총 814작품',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
            _buildListWebtoons(),
          ],
        ),
      ),
    );
  }

  _buildDropDownButton() {
    return DropdownButton(
      value: _selectedValue,
      items: _valueLIst.map((value) {
        return DropdownMenuItem(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          _selectedValue = value!;
        });
      },
      iconSize: 40,
      iconEnabledColor: Colors.black,
    );
  }

  _buildThemeDropDownButton() {
    return DropdownButton(
      value: _selectedThemeValue,
      items: _themeList.map((value) {
        return DropdownMenuItem(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          _selectedThemeValue = value!;
        });
      },
      iconSize: 40,
      iconEnabledColor: Colors.black,
    );
  }

  _buildListWebtoons() {
    return Column(
      children: [
        _buildListWebtoon('정신줄', '놓지마 정신줄 시즌 3', '신태훈 / 나승훈', '만화', '총 00화'),
        _buildListWebtoon('이십팔', '이십팔세기 광팬', '컷부', '컷툰', '총 00화'),
      ],
    );
  }

  _buildListWebtoon(imageName, title, author, theme, count) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white24),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/$imageName.png',
              // fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    author,
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    theme,
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    count,
                    style: TextStyle(fontSize: 9, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
