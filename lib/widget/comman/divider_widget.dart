import 'package:flutter/material.dart';

import '../../util/constance/colors.dart';
import '../../util/constance/text_style.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          color: AppColor.lightGreyColor,
          height: 1,
        )),
        const SizedBox(
          width: 5,
        ),
        Text('Or', style: AppText.smallGrey),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Container(
            color: AppColor.lightGreyColor,
            height: 1,
          ),
        ),
      ],
    );
  }
}
