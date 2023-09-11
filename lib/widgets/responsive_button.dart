import 'package:flutter/material.dart';
import 'package:listview_cubit_hooks/misc/colors.dart';
import 'package:listview_cubit_hooks/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  final bool isResponsive;
  final double? width;
  const ResponsiveButton(
      {super.key, this.width = 120, this.isResponsive = false});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive == true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.mainColor),
        child: Row(
          mainAxisAlignment: isResponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: const AppText(
                      text: "Book Trip Now",
                      color: Colors.white,
                    ),
                  )
                : Container(),
            Image.asset("assets/images/arrow_right.png"),
          ],
        ),
      ),
    );
  }
}
