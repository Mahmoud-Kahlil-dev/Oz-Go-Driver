import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';

import '../../constants/constants.dart';
import '../widget/default_button.dart';
import '../widget/from_to_component.dart';
import 'customer_driver_header_view.dart';

class StartTripView extends StatelessWidget {
  const StartTripView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Padding(
        padding: EdgeInsets.all(20.r),
        child: Column(
          children: [
            CustomerDriverHeaderView(
              image: 'assets/images/moha.jpg',
              isSuffix: false,
              suffix: Row(
                children: [
                  CircleAvatar(backgroundColor: AppColor.buttonColor,child: Icon(Icons.message,color: AppColor.white,)),
                  SizedBox(
                    width: 5.w,
                  ),
                  CircleAvatar(backgroundColor: AppColor.green,child: Icon(Icons.phone,color: AppColor.white,)),
                ],
              ),
            ),
            SizedBox(
              height: 23.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                settings(context, name: 'DISTANCE', number: '5.3 KM'),
                settings(context, name: 'Time', number: '30 min'),
                settings(context, name: 'Price', number: '\$25.00')
              ],
            ),
            SizedBox(
              height: 23.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DefaultButton(
                  label: 'Start',
                  onPressed: () {},
                  height: 56.h,
                  width: 320.w,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}