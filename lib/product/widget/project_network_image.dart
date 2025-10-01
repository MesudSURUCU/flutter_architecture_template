import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

/// A widget that displays a network image with custom loading animation.
class ProjectNetworkImage extends StatelessWidget {
  /// Creates a [ProjectNetworkImage] widget.
  const ProjectNetworkImage({required this.url, super.key});

  /// The URL of the image to display.
  final String? url;
  @override
  Widget build(BuildContext context) {
    return CustomNetworkImage(
      imageUrl: url,
      loadingWidget: Assets.lottie.animTaksiLoader.lottie(package: 'gen'),
    );
  }
}
