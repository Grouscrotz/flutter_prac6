import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  final String _url = 'https://example.com/image.jpg'; // Замените на реальный URL

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Пример с CachedNetworkImage'),
      ),
      body: Column(
        children: [
          CachedNetworkImage(
            imageUrl: _url,
            progressIndicatorBuilder: (context, url, progress) =>
            const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Center(
              child: Icon(
                Icons.error,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
