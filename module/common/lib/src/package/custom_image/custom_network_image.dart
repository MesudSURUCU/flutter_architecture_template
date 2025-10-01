import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/src/package/custom_image/custom_mem_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// A custom network image widget that can be extended in the future.
final class CustomNetworkImage extends StatelessWidget {
  /// Creates a [CustomNetworkImage] widget.
  const CustomNetworkImage({
    super.key,
    this.imageUrl,
    this.emptyWidget,
    this.memCache = const CustomMemCache(width: 200, height: 200),
    this.boxFit = BoxFit.cover,
    this.loadingWidget,
    this.size,
  });

  /// The URL of the image to display.
  final String? imageUrl;

  /// A widget to display when the [imageUrl] is null or empty.
  final Widget? emptyWidget;

  /// A widget to display while the image is loading.
  final Widget? loadingWidget;

  /// How to inscribe the image into the space allocated during layout.
  final BoxFit boxFit;

  /// The size of the image.
  final Size? size;

  /// The memory cache dimensions for the image.
  /// Custom memCache = const CustomMemCache(width: 200, height: 200);
  final CustomMemCache memCache;
  @override
  Widget build(BuildContext context) {
    final url = imageUrl;
    if (url == null || url.isEmpty) {
      return emptyWidget ?? const SizedBox();
    }

    return CachedNetworkImage(
      imageUrl: url,
      memCacheHeight: memCache.height,
      memCacheWidth: memCache.width,
      fit: boxFit,
      width: size?.width,
      height: size?.height,
      errorListener: (value) {
        if (kDebugMode) {
          debugPrint('CustomNetworkImage errorListener: $value');
        }
      },
      progressIndicatorBuilder: (context, url, progress) {
        return loadingWidget ??
            const Center(
              child: CircularProgressIndicator(),
            );
      },
      errorWidget: (context, url, error) {
        return emptyWidget ?? const SizedBox();
      },
    );
  }
}
