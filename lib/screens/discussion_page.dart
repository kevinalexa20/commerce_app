import 'package:commerce_app/config/config.dart';
import 'package:commerce_app/utils/utils.dart';
import 'package:commerce_app/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DiscussionPage extends StatelessWidget {
  static DiscussionPage builder(BuildContext context, GoRouterState state) =>
      const DiscussionPage();

  const DiscussionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // forceMaterialTransparency: true,
        // excludeHeaderSemantics: true,
        // title: const Text('Product Page'),
        flexibleSpace: Container(
          // margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.all(10),
          width: deviceSize.width,
          decoration: BoxDecoration(
            color: context.colorScheme.onPrimaryContainer,
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 11.h),
                width: deviceSize.width * 0.68,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: context.colorScheme.outline,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Icon(
                        Icons.arrow_back,
                        color: context.colorScheme.onPrimary,
                      ),
                    ),
                    WidthSpacer(width: 5.w),
                    VerticalDivider(
                      color: context.colorScheme.onPrimary,
                      thickness: 1,
                      width: 1.w,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(4, 0, 0, 0),
                      child: Icon(
                        Icons.search,
                        color: context.colorScheme.onPrimary,
                      ),
                    ),
                    Text(
                      'Cari di Masterbagasi',
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                        color: context.colorScheme.onPrimary,
                        fontSize: 13.sp,
                      ),
                    ),
                    WidthSpacer(width: 12.w),
                    Image(
                      image: AssetImage('assets/icon/transaction-icon.png'),
                    )
                  ],
                ),
              ),
              WidthSpacer(width: 5.w),
              Container(
                margin: EdgeInsets.only(top: 11.h),
                child: GestureDetector(
                  onTap: () {},
                  child: Image(
                    image: AssetImage('assets/icon/cart-icon.png'),
                  ),
                ),
              ),
              WidthSpacer(width: 5.w),
              Container(
                margin: EdgeInsets.only(top: 11.h),
                child: GestureDetector(
                  onTap: () {},
                  child: Image(
                    image: AssetImage('assets/icon/chat-icon.png'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          width: deviceSize.width,
          decoration: BoxDecoration(
            color: context.colorScheme.surfaceVariant,
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: deviceSize.width,
                decoration: BoxDecoration(
                  color: context.colorScheme.background,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Diskusi Produk',
                      style: TextStyle(
                        color: context.colorScheme.onBackground,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    HeightSpacer(height: 15.h),
                    Text(
                      'Ingin bertanya mengenai produk ini dalam forum diskusi?',
                      style: TextStyle(
                        color: context.colorScheme.onBackground,
                        fontSize: 14.sp,
                      ),
                    ),
                    HeightSpacer(height: 15.h),
                    GestureDetector(
                      onTap: () {
                        context.push(RouteLocation.discussionPage);
                      },
                      child: Container(
                        width: deviceSize.width,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: context.colorScheme.primary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Tulis Pertanyaan',
                            style: TextStyle(
                              color: context.colorScheme.onPrimary,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              HeightSpacer(height: 15.h),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: deviceSize.width,
                    height: 570.h,
                    decoration: BoxDecoration(
                      color: context.colorScheme.background,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 70.w,
                          height: 70.h,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/user/user_profile1.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        WidthSpacer(width: 5.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image(
                                  width: 28.w,
                                  height: 16.h,
                                  image: AssetImage(
                                    'assets/flag/gbr.png',
                                  ),
                                ),
                                WidthSpacer(width: 10.w),
                                Text(
                                  'GBR',
                                  style: TextStyle(
                                    color: context.colorScheme.onBackground,
                                    fontSize: 16.sp,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              'Dandi Rizaldi',
                              style: TextStyle(
                                color: context.colorScheme.onBackground,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            HeightSpacer(height: 5.h),
                            Text(
                              'Kirim Paru ke UK aman kak?',
                              style: TextStyle(
                                color: context.colorScheme.onBackground,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                        Text('Jun 2024'),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 45,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: deviceSize.width * 0.8,
                          // height: 200.h,
                          decoration: BoxDecoration(
                            color: context.colorScheme.surfaceVariant,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 70.w,
                                height: 70.h,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/user/user_profile2.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              WidthSpacer(width: 10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image(
                                        width: 28.w,
                                        height: 16.h,
                                        image: AssetImage(
                                          'assets/flag/gbr.png',
                                        ),
                                      ),
                                      WidthSpacer(width: 10.w),
                                      Text(
                                        'GBR',
                                        style: TextStyle(
                                          color:
                                              context.colorScheme.onBackground,
                                          fontSize: 16.sp,
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'Yolla Viana',
                                    style: TextStyle(
                                      color: context.colorScheme.onBackground,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  HeightSpacer(height: 5.h),
                                  Container(
                                    width: 120.w,
                                    child: Text(
                                      'waktu itu aku aman kak, karena dari masterbagasinya dikasih packaging ulang kak, semacam bundling gitu kak.',
                                      style: TextStyle(
                                        color: context.colorScheme.onBackground,
                                        fontSize: 12.sp,
                                      ),
                                      overflow: TextOverflow.clip,
                                    ),
                                  ),
                                ],
                              ),
                              Text('Jun 2024'),
                            ],
                          ),
                        ),
                        HeightSpacer(height: 10.h),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: deviceSize.width * 0.8,
                          // height: 200.h,
                          decoration: BoxDecoration(
                            color: context.colorScheme.surfaceVariant,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 70.w,
                                height: 70.h,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/user/user_profile3.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              WidthSpacer(width: 10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image(
                                        width: 28.w,
                                        height: 16.h,
                                        image: AssetImage(
                                          'assets/flag/gbr.png',
                                        ),
                                      ),
                                      WidthSpacer(width: 10.w),
                                      Text(
                                        'GBR',
                                        style: TextStyle(
                                          color:
                                              context.colorScheme.onBackground,
                                          fontSize: 16.sp,
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'Echa Fadhillah',
                                    style: TextStyle(
                                      color: context.colorScheme.onBackground,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  HeightSpacer(height: 5.h),
                                  Container(
                                    width: 120.w,
                                    child: Text(
                                      'aman sih, tapi sempet mau kecewa karena kena remote.',
                                      style: TextStyle(
                                        color: context.colorScheme.onBackground,
                                        fontSize: 12.sp,
                                      ),
                                      overflow: TextOverflow.clip,
                                    ),
                                  ),
                                ],
                              ),
                              Text('Jun 2024'),
                            ],
                          ),
                        ),
                        HeightSpacer(height: 10.h),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: deviceSize.width * 0.8,
                          // height: 200.h,
                          decoration: BoxDecoration(
                            color: context.colorScheme.surfaceVariant,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 70.w,
                                height: 70.h,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/user/user_profile1.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              WidthSpacer(width: 10.w),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                padding: EdgeInsets.all(10),
                                width: 185.w,
                                height: 50.h,
                                decoration: BoxDecoration(
                                  color: context.colorScheme.surface,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Isi komentar di sini....',
                                      style: TextStyle(
                                        color: context.colorScheme.surfaceTint,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              HeightSpacer(height: 15.h),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: deviceSize.width,
                    height: 350.h,
                    decoration: BoxDecoration(
                      color: context.colorScheme.background,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 70.w,
                          height: 70.h,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/user/user_profile4.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        WidthSpacer(width: 5.w),
                        Container(
                          width: deviceSize.width * 0.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 28.w,
                                    height: 16.h,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: context
                                            .colorScheme.onPrimaryContainer
                                            .withOpacity(0.2),
                                        width: 1,
                                      ),
                                    ),
                                    child: Image(
                                      width: 28.w,
                                      height: 16.h,
                                      image: AssetImage(
                                        'assets/flag/jpn.png',
                                      ),
                                    ),
                                  ),
                                  WidthSpacer(width: 10.w),
                                  Text(
                                    'JPN',
                                    style: TextStyle(
                                      color: context.colorScheme.onBackground,
                                      fontSize: 16.sp,
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                'Ratna Nariswari',
                                style: TextStyle(
                                  color: context.colorScheme.onBackground,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              HeightSpacer(height: 5.h),
                              Text(
                                'gimana biar dapet diskon kak?',
                                style: TextStyle(
                                  color: context.colorScheme.onBackground,
                                  fontSize: 14.sp,
                                ),
                                overflow: TextOverflow.clip,
                              ),
                            ],
                          ),
                        ),
                        Text('Mar 2024'),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 110,
                    left: 45,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: deviceSize.width * 0.8,
                          // height: 200.h,
                          decoration: BoxDecoration(
                            color: context.colorScheme.surfaceVariant,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 70.w,
                                height: 70.h,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/user/user_profile5.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              WidthSpacer(width: 10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image(
                                        width: 28.w,
                                        height: 16.h,
                                        image: AssetImage(
                                          'assets/flag/nzl.png',
                                        ),
                                      ),
                                      WidthSpacer(width: 10.w),
                                      Text(
                                        'NZL',
                                        style: TextStyle(
                                          color:
                                              context.colorScheme.onBackground,
                                          fontSize: 16.sp,
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'Noval Novarty',
                                    style: TextStyle(
                                      color: context.colorScheme.onBackground,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  HeightSpacer(height: 5.h),
                                  Container(
                                    width: 120.w,
                                    child: Text(
                                      'upload kartu migran kak.',
                                      style: TextStyle(
                                        color: context.colorScheme.onBackground,
                                        fontSize: 12.sp,
                                      ),
                                      overflow: TextOverflow.clip,
                                    ),
                                  ),
                                ],
                              ),
                              Text('Mar 2024'),
                            ],
                          ),
                        ),
                        HeightSpacer(height: 10.h),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: deviceSize.width * 0.8,
                          // height: 200.h,
                          decoration: BoxDecoration(
                            color: context.colorScheme.surfaceVariant,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 70.w,
                                height: 70.h,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/user/user_profile1.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              WidthSpacer(width: 10.w),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                padding: EdgeInsets.all(10),
                                width: 185.w,
                                height: 50.h,
                                decoration: BoxDecoration(
                                  color: context.colorScheme.surface,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Isi komentar di sini....',
                                      style: TextStyle(
                                        color: context.colorScheme.surfaceTint,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              HeightSpacer(height: 15.h),
              Container(
                padding: EdgeInsets.all(10),
                width: deviceSize.width,
                decoration: BoxDecoration(
                  color: context.colorScheme.background,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pilihan Lainnya Untukmu',
                      style: TextStyle(
                        color: context.colorScheme.onBackground,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Lihat Semua',
                        style: TextStyle(
                          color: context.colorScheme.error,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              HeightSpacer(height: 15.h),
              Container(
                padding: EdgeInsets.all(10),
                width: deviceSize.width,
                decoration: BoxDecoration(
                  color: context.colorScheme.background,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image(
                        image: AssetImage('assets/icon/chat-bw-icon.png'),
                      ),
                    ),
                    WidthSpacer(width: 10.w),
                    //button text, when user tap add product to the cart
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 120.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          // color: context.colorScheme.primary,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: context.colorScheme.primary,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Beli Langsung',
                            style: TextStyle(
                              color: context.colorScheme.primary,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    WidthSpacer(width: 10.w),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 120.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: context.colorScheme.primary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            '+ Keranjang',
                            style: TextStyle(
                              color: context.colorScheme.onPrimary,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
