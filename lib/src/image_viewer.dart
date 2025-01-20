// ignore_for_file: use_colored_box

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  const ImageViewer({
    required this.imageUrl,
    super.key,
  });
  static const String route = 'ImageViewer';
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: <Widget>[
              _buildImageViewer(),
              _buildCloseButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageViewer() {
    return InteractiveViewer(
      boundaryMargin: const EdgeInsets.all(100),
      minScale: 0.5,
      maxScale: 2,
      child: SizedBox(
        height: double.infinity,
        child: Center(
          child: Hero(
            tag: 'imageViewer',
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              // fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCloseButton(BuildContext context) {
    return Positioned(
      right: 10,
      child: IconButton(
        icon: const Icon(
          Icons.close,
          color: Colors.grey,
          size: 30,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
