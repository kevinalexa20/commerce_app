import 'package:commerce_app/utils/utils.dart';
import 'package:commerce_app/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProductPage extends StatelessWidget {
  static ProductPage builder(BuildContext context, GoRouterState state) =>
      const ProductPage();

  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;

    return Scaffold(
      appBar: AppBar(
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
            // borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              PhotoProduct(
                image: AssetImage('assets/product/product1.png'),
              ),
              HeightSpacer(height: 10.h),
              PriceTag(
                deviceSize: deviceSize,
                price: 'Rp 178.200',
                weightProduct: '0.35 Kg',
              ),
              HeightSpacer(height: 10.h),
              //judul dan varian produk
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
                      'Dapur Mami Kikas - Paru Pedas Aceh dan Ikan Kayu Aceh',
                      style: TextStyle(
                        color: context.colorScheme.onBackground,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    HeightSpacer(height: 15.h),
                    Text(
                      'Select Variant',
                      style: TextStyle(
                        color: context.colorScheme.onBackground,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    HeightSpacer(height: 15.h),
                    Wrap(
                      spacing: 10,
                      runSpacing: 5,
                      children: [
                        Flexible(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: context.colorScheme.onPrimaryContainer,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                'Bundling Paru Pedas & Ikan Kayu Aceh',
                                style: TextStyle(
                                  color: context.colorScheme.onPrimary,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: context.colorScheme.background,
                                border: Border.all(
                                  color: context.colorScheme.onBackground,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                'Paru Pedas Aceh',
                                style: TextStyle(
                                  color: context.colorScheme.onBackground,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: context.colorScheme.background,
                                border: Border.all(
                                  color: context.colorScheme.onBackground,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                'Ikan Kayu Aceh',
                                style: TextStyle(
                                  color: context.colorScheme.onBackground,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              HeightSpacer(height: 10.h),
              //Detail Product
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
                      'Product Detail',
                      style: TextStyle(
                        color: context.colorScheme.onBackground,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    HeightSpacer(height: 15.h),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sertifikasi',
                              style: TextStyle(
                                color: context.colorScheme.onBackground,
                                fontSize: 14.sp,
                              ),
                            ),
                            HeightSpacer(height: 5.h),
                            Text(
                              'Kategori',
                              style: TextStyle(
                                color: context.colorScheme.onBackground,
                                fontSize: 14.sp,
                              ),
                            ),
                            HeightSpacer(height: 5.h),
                            Text(
                              'Provinsi',
                              style: TextStyle(
                                color: context.colorScheme.onBackground,
                                fontSize: 14.sp,
                              ),
                            ),
                            HeightSpacer(height: 5.h),
                            Text(
                              'Brand',
                              style: TextStyle(
                                color: context.colorScheme.onBackground,
                                fontSize: 14.sp,
                              ),
                            ),
                            HeightSpacer(height: 5.h),
                            Text(
                              'SKU',
                              style: TextStyle(
                                color: context.colorScheme.onBackground,
                                fontSize: 14.sp,
                              ),
                            ),
                            HeightSpacer(height: 5.h),
                            Text(
                              'Sustensi',
                              style: TextStyle(
                                color: context.colorScheme.onBackground,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                        WidthSpacer(width: 50.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Halal MUI',
                                    style: TextStyle(
                                      color: context.colorScheme.onBackground,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    width: 180.w,
                                    height: 1.h,
                                    decoration: BoxDecoration(
                                      color: context.colorScheme.onBackground
                                          .withOpacity(0.3),
                                      // borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            HeightSpacer(height: 5.h),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Makanan & Minuman',
                                  style: TextStyle(
                                    color: context.colorScheme.onBackground,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  width: 180.w,
                                  height: 1.h,
                                  decoration: BoxDecoration(
                                    color: context.colorScheme.onBackground
                                        .withOpacity(0.3),
                                    // borderRadius: BorderRadius.circular(10),
                                  ),
                                )
                              ],
                            ),
                            HeightSpacer(height: 5.h),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Aceh',
                                  style: TextStyle(
                                    color: context.colorScheme.onBackground,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  width: 180.w,
                                  height: 1.h,
                                  decoration: BoxDecoration(
                                    color: context.colorScheme.onBackground
                                        .withOpacity(0.3),
                                    // borderRadius: BorderRadius.circular(10),
                                  ),
                                )
                              ],
                            ),
                            HeightSpacer(height: 5.h),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dapur Mami Kikas',
                                  style: TextStyle(
                                    color: context.colorScheme.onBackground,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  width: 180.w,
                                  height: 1.h,
                                  decoration: BoxDecoration(
                                    color: context.colorScheme.onBackground
                                        .withOpacity(0.3),
                                    // borderRadius: BorderRadius.circular(10),
                                  ),
                                )
                              ],
                            ),
                            HeightSpacer(height: 5.h),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'A1532',
                                  style: TextStyle(
                                    color: context.colorScheme.onBackground,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  width: 180.w,
                                  height: 1.h,
                                  decoration: BoxDecoration(
                                    color: context.colorScheme.onBackground
                                        .withOpacity(0.3),
                                    // borderRadius: BorderRadius.circular(10),
                                  ),
                                )
                              ],
                            ),
                            HeightSpacer(height: 5.h),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '2 pcs x 125 gr',
                                  style: TextStyle(
                                    color: context.colorScheme.onBackground,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  width: 180.w,
                                  height: 1.h,
                                  decoration: BoxDecoration(
                                    color: context.colorScheme.onBackground
                                        .withOpacity(0.3),
                                    // borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              HeightSpacer(height: 10.h),
              //Deskripsi Produk
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
                      'Deskripsi Produk',
                      style: TextStyle(
                        color: context.colorScheme.onBackground,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    HeightSpacer(height: 15.h),
                    Text(
                      'Olahan Paru khas Aceh yang pedas membuat selera makan meningkat, bisa mengobati rasa kangen akan masakan Nusantara.',
                      style: TextStyle(
                        color: context.colorScheme.onBackground,
                        fontSize: 14.sp,
                      ),
                    ),
                    HeightSpacer(height: 15.h),
                    Text(
                      'Olahan ikan Kayu khas Aceh yang pedas membuat selera makan meningkat, bisa mengobati rasa kangen akan masakan Nusantara.',
                      style: TextStyle(
                        color: context.colorScheme.onBackground,
                        fontSize: 14.sp,
                      ),
                    ),
                    HeightSpacer(height: 15.h),
                    Text(
                      'Terdiri dari 1 Paru Pedas Aceh Spicy 250 gram, 1 Ikan Kayu Aceh Spicy 250 gram.',
                      style: TextStyle(
                        color: context.colorScheme.onBackground,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ),
              HeightSpacer(height: 10.h),
              //Another Product preview
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
                      'Lainnya di Kategori ini',
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
              HeightSpacer(height: 10.h),
              //carousel other product listing
              Container(
                padding: EdgeInsets.all(10),
                width: deviceSize.width,
                decoration: BoxDecoration(
                  color: context.colorScheme.background,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 325.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            width: 150.w,
                            decoration: BoxDecoration(
                              color: context.colorScheme.background,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/product/product4.png'),
                                ),
                                Text(
                                  'Sariwangi - Teh Celup Asli',
                                  style: TextStyle(
                                    color: context.colorScheme.onBackground,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                HeightSpacer(height: 15.h),
                                Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Rp 178.200',
                                      style: TextStyle(
                                        color: context.colorScheme.onBackground,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    WidthSpacer(width: 10.w),
                                    VerticalDivider(
                                      color: context.colorScheme.outlineVariant,
                                      thickness: 1,
                                      width: 1.w,
                                    ),
                                    Text(
                                      '400g',
                                      style: TextStyle(
                                        color: context.colorScheme.onBackground,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                HeightSpacer(height: 10.h),
                                Text(
                                  'terjual 1260',
                                  style: TextStyle(
                                    color: context.colorScheme.primary,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                HeightSpacer(height: 10.h),
                                Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Image(
                                          image: AssetImage(
                                              'assets/icon/love-icon.png'),
                                        ),
                                      ),
                                    ),
                                    WidthSpacer(width: 10.w),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 100.w,
                                        height: 33.h,
                                        decoration: BoxDecoration(
                                          color: context.colorScheme.background,
                                          border: Border.all(
                                            color: context.colorScheme.error,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '+ Keranjang',
                                            style: TextStyle(
                                              color: context.colorScheme.error,
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          WidthSpacer(width: 10.w),
                          Container(
                            width: 150.w,
                            decoration: BoxDecoration(
                              color: context.colorScheme.background,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/product/product5.png'),
                                ),
                                Text(
                                  'Sariwangi - Teh Celup Asli',
                                  style: TextStyle(
                                    color: context.colorScheme.onBackground,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                HeightSpacer(height: 15.h),
                                Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Rp 178.200',
                                      style: TextStyle(
                                        color: context.colorScheme.onBackground,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    WidthSpacer(width: 10.w),
                                    VerticalDivider(
                                      color: context.colorScheme.outlineVariant,
                                      thickness: 1,
                                      width: 1.w,
                                    ),
                                    Text(
                                      '400g',
                                      style: TextStyle(
                                        color: context.colorScheme.onBackground,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                HeightSpacer(height: 10.h),
                                Text(
                                  'terjual 1260',
                                  style: TextStyle(
                                    color: context.colorScheme.primary,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                HeightSpacer(height: 10.h),
                                Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Image(
                                          image: AssetImage(
                                              'assets/icon/love-icon.png'),
                                        ),
                                      ),
                                    ),
                                    WidthSpacer(width: 10.w),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 100.w,
                                        height: 33.h,
                                        decoration: BoxDecoration(
                                          color: context.colorScheme.background,
                                          border: Border.all(
                                            color: context.colorScheme.error,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '+ Keranjang',
                                            style: TextStyle(
                                              color: context.colorScheme.error,
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          WidthSpacer(width: 10.w),
                          Container(
                            width: 150.w,
                            decoration: BoxDecoration(
                              color: context.colorScheme.background,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/product/product3.png'),
                                ),
                                Text(
                                    'Dapur Mami Kikas - Paru Pedas Aceh dan Ikan Kayu Aceh',
                                    style: TextStyle(
                                        color:
                                            context.colorScheme.onBackground))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              HeightSpacer(height: 10.h),
              //photo product as a banner full device width
              Container(
                width: deviceSize.width,
                height: 150.h,
                decoration: BoxDecoration(
                  color: context.colorScheme.background,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image(
                  image: AssetImage('assets/product/product_banner1.png'),
                  fit: BoxFit.cover,
                ),
              ),
              HeightSpacer(height: 10.h),
              //About brand
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
                      'Tentang Brand',
                      style: TextStyle(
                        color: context.colorScheme.onBackground,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    HeightSpacer(height: 15.h),
                    Wrap(
                      spacing: 10,
                      runSpacing: 5,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 80.w,
                              height: 80.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/product/profile_brand1.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            WidthSpacer(width: 10.w),
                            Expanded(
                              child: Text(
                                'Dapur Mami Kikas',
                                style: TextStyle(
                                  color: context.colorScheme.onBackground,
                                  fontSize: 24.sp,
                                ),
                              ),
                            ),
                            Container(
                              width: 40.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // color: context.colorScheme.onBackground,
                                border: Border.all(
                                  color: context.colorScheme.onBackground,
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: context.colorScheme.onBackground,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    HeightSpacer(height: 15.h),
                    Text(
                      'Dapur Mami Kikas adalah brand makanan yang menyediakan berbagai macam olahan makanan khas Aceh yang pedas dan lezat.',
                      style: TextStyle(
                        color: context.colorScheme.onBackground,
                        fontSize: 14.sp,
                      ),
                    ),
                    HeightSpacer(height: 15.h),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Selengkapnya....',
                        style: TextStyle(
                          color: context.colorScheme.error,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              HeightSpacer(height: 10.h),
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
                      'Lainnya di Kategori ini',
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
              HeightSpacer(height: 10.h),
              Container(
                padding: EdgeInsets.all(10),
                width: deviceSize.width,
                decoration: BoxDecoration(
                  color: context.colorScheme.background,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 325.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            width: 150.w,
                            decoration: BoxDecoration(
                              color: context.colorScheme.background,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/product/product4.png'),
                                ),
                                Text(
                                  'Sariwangi - Teh Celup Asli',
                                  style: TextStyle(
                                    color: context.colorScheme.onBackground,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                HeightSpacer(height: 15.h),
                                Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Rp 178.200',
                                      style: TextStyle(
                                        color: context.colorScheme.onBackground,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    WidthSpacer(width: 10.w),
                                    VerticalDivider(
                                      color: context.colorScheme.outlineVariant,
                                      thickness: 1,
                                      width: 1.w,
                                    ),
                                    Text(
                                      '400g',
                                      style: TextStyle(
                                        color: context.colorScheme.onBackground,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                HeightSpacer(height: 10.h),
                                Text(
                                  'terjual 1260',
                                  style: TextStyle(
                                    color: context.colorScheme.primary,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                HeightSpacer(height: 10.h),
                                Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Image(
                                          image: AssetImage(
                                              'assets/icon/love-icon.png'),
                                        ),
                                      ),
                                    ),
                                    WidthSpacer(width: 10.w),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 100.w,
                                        height: 33.h,
                                        decoration: BoxDecoration(
                                          color: context.colorScheme.background,
                                          border: Border.all(
                                            color: context.colorScheme.error,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '+ Keranjang',
                                            style: TextStyle(
                                              color: context.colorScheme.error,
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          WidthSpacer(width: 10.w),
                          Container(
                            width: 150.w,
                            decoration: BoxDecoration(
                              color: context.colorScheme.background,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/product/product5.png'),
                                ),
                                Text(
                                  'Sariwangi - Teh Celup Asli',
                                  style: TextStyle(
                                    color: context.colorScheme.onBackground,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                HeightSpacer(height: 15.h),
                                Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Rp 178.200',
                                      style: TextStyle(
                                        color: context.colorScheme.onBackground,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    WidthSpacer(width: 10.w),
                                    VerticalDivider(
                                      color: context.colorScheme.outlineVariant,
                                      thickness: 1,
                                      width: 1.w,
                                    ),
                                    Text(
                                      '400g',
                                      style: TextStyle(
                                        color: context.colorScheme.onBackground,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                HeightSpacer(height: 10.h),
                                Text(
                                  'terjual 1260',
                                  style: TextStyle(
                                    color: context.colorScheme.primary,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                HeightSpacer(height: 10.h),
                                Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Image(
                                          image: AssetImage(
                                              'assets/icon/love-icon.png'),
                                        ),
                                      ),
                                    ),
                                    WidthSpacer(width: 10.w),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 100.w,
                                        height: 33.h,
                                        decoration: BoxDecoration(
                                          color: context.colorScheme.background,
                                          border: Border.all(
                                            color: context.colorScheme.error,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '+ Keranjang',
                                            style: TextStyle(
                                              color: context.colorScheme.error,
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          WidthSpacer(width: 10.w),
                          Container(
                            width: 150.w,
                            decoration: BoxDecoration(
                              color: context.colorScheme.background,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/product/product3.png'),
                                ),
                                Text(
                                    'Dapur Mami Kikas - Paru Pedas Aceh dan Ikan Kayu Aceh',
                                    style: TextStyle(
                                        color:
                                            context.colorScheme.onBackground))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              HeightSpacer(height: 10.h),
              //Discussion about product
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
                        fontSize: 16.sp,
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
                    //button text, when user tap go to discussion page
                    GestureDetector(
                      onTap: () {},
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
              HeightSpacer(height: 10.h),
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
              HeightSpacer(height: 10.h),
              Container(
                padding: EdgeInsets.all(10),
                width: deviceSize.width,
                decoration: BoxDecoration(
                  color: context.colorScheme.background,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 325.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            width: 150.w,
                            decoration: BoxDecoration(
                              color: context.colorScheme.background,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/product/product4.png'),
                                ),
                                Text(
                                  'Sariwangi - Teh Celup Asli',
                                  style: TextStyle(
                                    color: context.colorScheme.onBackground,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                HeightSpacer(height: 15.h),
                                Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Rp 178.200',
                                      style: TextStyle(
                                        color: context.colorScheme.onBackground,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    WidthSpacer(width: 10.w),
                                    VerticalDivider(
                                      color: context.colorScheme.outlineVariant,
                                      thickness: 1,
                                      width: 1.w,
                                    ),
                                    Text(
                                      '400g',
                                      style: TextStyle(
                                        color: context.colorScheme.onBackground,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                HeightSpacer(height: 10.h),
                                Text(
                                  'terjual 1260',
                                  style: TextStyle(
                                    color: context.colorScheme.primary,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                HeightSpacer(height: 10.h),
                                Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Image(
                                          image: AssetImage(
                                              'assets/icon/love-icon.png'),
                                        ),
                                      ),
                                    ),
                                    WidthSpacer(width: 10.w),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 100.w,
                                        height: 33.h,
                                        decoration: BoxDecoration(
                                          color: context.colorScheme.background,
                                          border: Border.all(
                                            color: context.colorScheme.error,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '+ Keranjang',
                                            style: TextStyle(
                                              color: context.colorScheme.error,
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          WidthSpacer(width: 10.w),
                          Container(
                            width: 150.w,
                            decoration: BoxDecoration(
                              color: context.colorScheme.background,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/product/product5.png'),
                                ),
                                Text(
                                  'Sariwangi - Teh Celup Asli',
                                  style: TextStyle(
                                    color: context.colorScheme.onBackground,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                HeightSpacer(height: 15.h),
                                Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Rp 178.200',
                                      style: TextStyle(
                                        color: context.colorScheme.onBackground,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    WidthSpacer(width: 10.w),
                                    VerticalDivider(
                                      color: context.colorScheme.outlineVariant,
                                      thickness: 1,
                                      width: 1.w,
                                    ),
                                    Text(
                                      '400g',
                                      style: TextStyle(
                                        color: context.colorScheme.onBackground,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                HeightSpacer(height: 10.h),
                                Text(
                                  'terjual 1260',
                                  style: TextStyle(
                                    color: context.colorScheme.primary,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                HeightSpacer(height: 10.h),
                                Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Image(
                                          image: AssetImage(
                                              'assets/icon/love-icon.png'),
                                        ),
                                      ),
                                    ),
                                    WidthSpacer(width: 10.w),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 100.w,
                                        height: 33.h,
                                        decoration: BoxDecoration(
                                          color: context.colorScheme.background,
                                          border: Border.all(
                                            color: context.colorScheme.error,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '+ Keranjang',
                                            style: TextStyle(
                                              color: context.colorScheme.error,
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          WidthSpacer(width: 10.w),
                          Container(
                            width: 150.w,
                            decoration: BoxDecoration(
                              color: context.colorScheme.background,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/product/product3.png'),
                                ),
                                Text(
                                    'Dapur Mami Kikas - Paru Pedas Aceh dan Ikan Kayu Aceh',
                                    style: TextStyle(
                                        color:
                                            context.colorScheme.onBackground))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
