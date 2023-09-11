import 'package:flutter/material.dart';
import 'package:listview_cubit_hooks/misc/colors.dart';
import 'package:listview_cubit_hooks/widgets/app_button.dart';
import 'package:listview_cubit_hooks/widgets/app_large_text.dart';
import 'package:listview_cubit_hooks/widgets/app_text.dart';
import 'package:listview_cubit_hooks/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 330,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/mountain.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              left: 20,
              top: 70,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 250,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                            text: "Yosemite",
                            color: Colors.black.withOpacity(0.8)),
                        const AppLargeText(
                            text: "\$ 250", color: AppColors.mainColor),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.mainColor,
                        ),
                        AppText(
                          text: "USA, California",
                          color: AppColors.textColor1,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(Icons.star,
                                color: index < gottenStars
                                    ? AppColors.starColor
                                    : AppColors.textColor2);
                          }),
                        ),
                        const SizedBox(width: 10),
                        const AppText(
                            text: "(4.0)", color: AppColors.textColor2),
                      ],
                    ),
                    const SizedBox(height: 10),
                    AppLargeText(
                      text: "People",
                      color: Colors.black.withOpacity(0.8),
                      size: 20,
                    ),
                    const SizedBox(height: 5),
                    const AppText(
                      text: "Number of people in your group",
                      color: AppColors.mainTextColor,
                    ),
                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: AppButton(
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              backgroundColor: selectedIndex == index
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              size: 50,
                              borderColor: selectedIndex == index
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              text: (index + 1).toString(),
                            ),
                          ),
                        );
                      }),
                    ),
                    const SizedBox(height: 5),
                    AppLargeText(
                        text: "Description",
                        color: Colors.black.withOpacity(0.8),
                        size: 20),
                    const SizedBox(height: 5),
                    const AppText(
                      text:
                          "You must go far a travelling hleps get rid of presure. Go to the mountains to see the nature.",
                      color: AppColors.mainTextColor,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    AppButton(
                      color: AppColors.textColor2,
                      backgroundColor: Colors.white,
                      size: 60,
                      borderColor: AppColors.textColor2,
                      isIcon: true,
                      icon: Icons.favorite_border,
                    ),
                    const SizedBox(width: 20),
                    const ResponsiveButton(
                      isResponsive: true,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
