

import 'package:flutter/material.dart';
import 'package:naver_webtoon/components/appbar.dart';
import 'package:naver_webtoon/constrants.dart';

import '../../size.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

 bool a = false;
 bool b = false;
 bool c = false;
 bool d = false;
 bool e = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InnerAppBar(title: "검색"),
      body: SafeArea(child: Column(
        children: [
          searchForm(context),
          list("기반84", a),
          list("패션왕", b),
          list("참교육", c),
          list("헬퍼", d),
          list("노블레스", e),



        ],
      )),
    );
  }

  Widget searchForm(context){
    TextEditingController search = new TextEditingController();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: getBodyWidth(context) *0.85,
          height: 50,
          child: TextField(
            controller: search,
            decoration: InputDecoration(
hintText: "제목 또는 작가명 검색",
              fillColor: Colors.black
            ),
          ),
        ),
        InkWell(
          onTap: (){
            setState(() {
              list(search.text, false);
            });
          },
          child: Container(
            height: 47,
            width: getBodyWidth(context) *0.15,
            color: kAccentColor,
            child: Icon(Icons.search, color: Colors.white,),
          ),
        ),
      ],
    );
  }

  Widget list(String text, bool iscancle){
    if(iscancle == false){
    return Column(
      children: [
        Container(
          width: 390,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text),
              InkWell(
                  onTap: (){
                    setState(() {
                      if(iscancle == a){
                          a = true;
                      }else if (iscancle == b){
                        b = true;
                      }else if (iscancle == c){
                        c = true;
                      }else if (iscancle == d){
                        d = true;
                      }else if (iscancle == e){
                        e = true;
                      }
                    });
                  },
                  child: Icon(Icons.cancel_outlined)),

            ],
          ),
        ),
        Divider(height: 3,),
      ],
    );
  }
    else{
      return Container();
    }}
}
