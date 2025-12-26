import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Future<ColorScheme> getPalleteFromImage(String url) async {
  ImageProvider<Object> placeHolder =
      const AssetImage("assets/icons/bloomee_new_logo_c.png");

  try {
    return await ColorScheme.fromImageProvider(
        provider: CachedNetworkImageProvider(url));
  } catch (e) {
    return await ColorScheme.fromImageProvider(provider: placeHolder);
  }
}
