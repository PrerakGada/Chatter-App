import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    required this.radius,
    required this.url,
  }) : super(key: key);

  const Avatar.small({
    Key? key,
    this.radius = 16,
    required this.url,
  }) : super(key: key);

  const Avatar.medium({
    Key? key,
    this.radius = 22,
    required this.url,
  }) : super(key: key);

  const Avatar.large({
    Key? key,
    this.radius = 44,
    required this.url,
  }) : super(key: key);

  final double radius;
  final String url;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: CachedNetworkImageProvider(url),
      backgroundColor: Theme.of(context).cardColor,
    );
  }
}
