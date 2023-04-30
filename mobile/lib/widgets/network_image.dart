import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:weatherapp/extensions/extensions.dart';

class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage(
    this.url, {
    super.key,
    required this.width,
    required this.height,
    this.fit = BoxFit.cover,
  });

  final String url;
  final double width, height;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    final isSvg = Uri.parse(url).path.endsWith('.svg');

    return SizedBox(
      width: width,
      height: height,
      child: isSvg
          ? SvgPicture.network(
              url,
              fit: fit,
              placeholderBuilder: (_) => Shimmer(
                color: context.colors.textLight.withOpacity(0.5),
                child: const SizedBox.expand(),
              ),
            )
          : CachedNetworkImage(
              imageUrl: url,
              fit: fit,
              placeholder: (_, __) => Shimmer(
                color: context.colors.textLight.withOpacity(0.5),
                child: const SizedBox.expand(),
              ),
              errorWidget: (_, __, dynamic ___) => Container(
                alignment: Alignment.center,
                child: Icon(
                  Icons.image_not_supported,
                  color: context.colors.primary,
                ),
              ),
            ),
    );
  }
}
