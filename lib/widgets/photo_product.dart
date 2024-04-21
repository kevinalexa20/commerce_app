// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:commerce_app/utils/utils.dart';

class PhotoProduct extends StatelessWidget {
  final ImageProvider<Object> image;

  PhotoProduct({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: context.colorScheme.background,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image(
        image: image,
      ),
    );
  }
}
