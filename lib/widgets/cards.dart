import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/videoDetailsModel.dart';
import '../providers/card_provider.dart';

class NewsCard extends StatefulWidget {
  final VideoDetails videodetails;
  final bool isFront;

  const NewsCard(
      {super.key, required this.videodetails, required this.isFront});

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      final size = MediaQuery.of(context).size;

      final provider = Provider.of<CardProvider>(context, listen: false);

      provider.setScreenSize(size);
    });

    // controller = VideoPlayerController.asset(asset)
    //   ..addListener(() {
    //     setState(() {});
    //   })
    //   ..setLooping(true)
    //   ..initialize().then((_) => controller.play());
  }

  @override
  void dispose() {
    // controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SizedBox.expand(
        child: widget.isFront ? buildFrontCard() : buildCard(),
  );
}
