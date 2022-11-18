import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TitleImageSlider extends StatefulWidget {
  TitleImageSlider(
      {Key? key,
      required this.firstImage,
      required this.secondImage,
      required this.thirdImage})
      : super(key: key);

  var firstImage;
  var secondImage;
  var thirdImage;

  @override
  State<TitleImageSlider> createState() => _TitleImageSliderState();
}

class _TitleImageSliderState extends State<TitleImageSlider> {
  List<String>? bannerList;

  @override
  Widget build(BuildContext context) {
    bannerList = [
      'assets/${widget.firstImage}.png',
      'assets/${widget.secondImage}.png',
      'assets/${widget.thirdImage}.png'
    ];
    return Expanded(
      child: Container(
        height: 10,
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
          ),
          items: bannerList
              ?.map((e) => Container(
                    child: Image.asset(
                      e,
                      fit: BoxFit.fitWidth,
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }

// buildTitleImage(imageName, context) {
//   return SafeArea(
//     child: Image.asset(
//       imageName,
//       width: getBodyWidth(context),
//     ),
//   );
// }
}
