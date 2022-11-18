import 'package:flutter/material.dart';
import 'package:naver_webtoon/components/appbar.dart';
import 'package:naver_webtoon/constrants.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InnerAppBar(title: "검색"),
      body: SafeArea(child: Column(
        children: [
          searchForm(),
          list("기반84"),
          Divider(height: 3,),
          list("패션왕"),
          Divider(height: 3,),
          list("참교육"),
          Divider(height: 3,),
          list("헬퍼"),
          Divider(height: 3,),
          list("노블레스"),
          Divider(height: 3,),
          
          
        ],
      )),
    );
  }

  Widget searchForm(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 340,
          height: 50,
          child: TextField(
            decoration: InputDecoration(

hintText: "제목 또는 작가명 검색",
            ),
          ),
        ),
        Container(
          height: 50,
          width: 40,
          color: kAccentColor,
          child: Icon(Icons.search, color: Colors.white,),
        ),
      ],
    );
  }
  
  Widget list(String text){
    return Container(
      width: 390,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Icon(Icons.cancel_outlined),

        ],
      ),
    );
  }


}
