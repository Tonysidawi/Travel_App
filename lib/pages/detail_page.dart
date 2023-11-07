import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_buttons.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Stack(children: [
        Positioned(
          child: Container(
            width: double.maxFinite,
            height: 350,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('img/mountain.jpeg'))),
          ),
        ),
        Positioned(
          left: 20,
          top: 50,
          child: Row(
            children: [
              IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                ),
              )
            ],
          ),
        ),
        Positioned(
          right: 20,
          top: 50,
          child: Row(
            children: [
              IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: const Icon(
                  Icons.dashboard,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 320,
          height: 500,
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 30),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(
                    text: 'Yosemite',
                    color: Colors.black.withOpacity(0.8),
                  ),
                  AppLargeText(text: '\$ 250', color: AppColors.mainColor)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: AppColors.mainColor,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  AppText(
                    text: "USA, Califonia",
                    color: AppColors.textColor1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Wrap(
                    children: List.generate(
                        5,
                        (index) => Icon(
                              Icons.star,
                              color: index < gottenStars
                                  ? AppColors.starColor
                                  : AppColors.textColor2,
                            )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  AppText(
                    text: '(4.0)',
                    color: AppColors.textColor2,
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              AppLargeText(
                text: 'People',
                color: Colors.black.withOpacity(0.8),
                size: 20,
              ),
              SizedBox(
                height: 5,
              ),
              AppText(
                text: 'Number of people in your group',
                color: AppColors.mainColor,
              ),
              Wrap(
                children: List.generate(5, (index) {
                  return Container(
                      margin: EdgeInsets.only(right: 10),
                      child: AppButtons(
                        color: Colors.black,
                        backgroundColor: AppColors.buttonBackground,
                        borderColor: AppColors.buttonBackground,
                        size: 50,
                        text: (index + 1).toString(),
                      ));
                }),
              ),
            ]),
          ),
        ),
      ]),
    ));
  }
}
