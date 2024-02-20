import 'package:flutter/material.dart';

class ImageGallery extends StatelessWidget {
  final List<String> paths;
  final double imgWidth;
  final double imgHeight;

  const ImageGallery(
      {super.key,
      required this.paths,
      this.imgHeight = 200,
      this.imgWidth = 200});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: paths
              .map((path) => Image.asset(
                    path,
                    width: imgWidth,
                    height: imgHeight,
                  ))
              .toList()),
    );
  }
}
