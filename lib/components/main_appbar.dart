import 'package:flutter/material.dart';


class MainAppBar extends StatelessWidget {
  MainAppBar({Key? key, required this.title, required this.icons}) : super(key: key);
  String title;
  IconData icons;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(title, style: TextStyle(color: Colors.black87, fontSize: 20),),
            ),
            InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "/search");
                },
                child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(icons, color: Colors.black87,)))
          ],
        ),
      ),
    Divider(height: 1, thickness: 1,),
      ]);
  }
}

