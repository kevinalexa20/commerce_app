import 'package:commerce_app/utils/utils.dart';
import 'package:commerce_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceTag extends StatelessWidget {
  final Size deviceSize;
  final String price;
  final String weightProduct;

  const PriceTag({
    super.key,
    required this.deviceSize,
    required this.price,
    required this.weightProduct,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceSize.width,
      height: 50.h,
      // padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: context.colorScheme.background,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          WidthSpacer(width: 10.w),
          Text(
            price,
            style: TextStyle(
              color: context.colorScheme.onBackground,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          WidthSpacer(width: 57.w),
          VerticalDivider(
            color: context.colorScheme.outlineVariant,
            thickness: 1,
            width: 1.w,
          ),
          WidthSpacer(width: 10.w),
          Text(
            weightProduct,
            style: TextStyle(
              color: context.colorScheme.onBackground,
              fontSize: 12.sp,
            ),
          ),
          WidthSpacer(width: 10.w),
          VerticalDivider(
            color: context.colorScheme.outlineVariant,
            thickness: 1,
            width: 1.w,
          ),
          WidthSpacer(width: 10.w),
          Container(
            // margin: EdgeInsets.only(top: 11.h),
            child: GestureDetector(
              onTap: () {},
              child: Image(
                image: AssetImage('assets/icon/love-icon.png'),
              ),
            ),
          ),
          WidthSpacer(width: 10.w),
          VerticalDivider(
            color: context.colorScheme.outlineVariant,
            thickness: 1,
            width: 1.w,
          ),
          WidthSpacer(width: 10.w),
          Container(
            // margin: EdgeInsets.only(top: 11.h),
            child: GestureDetector(
              onTap: () {},
              child: Image(
                image: AssetImage('assets/icon/share-icon.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
