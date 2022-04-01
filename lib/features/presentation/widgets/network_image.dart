import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math' as math;

import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

Widget networkImage(
  BuildContext context,
  String? url, {
  double width = 48,
  double height = 48,
  BoxFit fit = BoxFit.cover,
  bool openPreview = true,
  bool isCircle = true,
  double borderRadius = 0,
  List<String>? urls,
  String? heroTag,
}) {
  double kMaxRadius = width;
  var decoration = BoxDecoration(
    shape: BoxShape.circle,
    color: Theme.of(context).scaffoldBackgroundColor,
    border: Border.all(
      color: Theme.of(context).scaffoldBackgroundColor,
      width: 4,
    ),
  );
  if (url == null || url.isEmpty) {
    return Container(
      decoration: decoration,
      child: noUserImageWidget(
        height * 0.8,
        Theme.of(context).textTheme.bodyText1?.color,
      ),
      width: width,
      height: height,
    );
  }
  var imageUrls = urls ?? [url];
  var initialPage = imageUrls.indexOf(url);
  var image = CachedNetworkImage(
    imageUrl: url,
    fit: fit,
    errorWidget: errorWidgetFn(),
    progressIndicatorBuilder: (context, _, progress) =>
        progressWidget(progress, width),
    width: width,
    height: height,
  );
  var imageWidget = SizedBox(
    width: width,
    height: height,
    child: Hero(
      tag: heroTag ?? url,
      createRectTween: _createRectTween,
      child: isCircle
          ? RadialExpansion(
              maxRadius: kMaxRadius,
              child: image,
            )
          : ClipRRect(
              child: image,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
    ),
  );
  return GestureDetector(
    onTap: openPreview
        ? () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ImagePreviewPage(
                  imageUrls: imageUrls,
                  initialPage: initialPage,
                ),
              ),
            );
          }
        : null,
    child: imageWidget,
  );
}

class ImagePreviewPage extends StatefulWidget {
  const ImagePreviewPage({
    Key? key,
    required this.imageUrls,
    this.initialPage = 0,
    this.heroTag,
  }) : super(key: key);

  final List<String> imageUrls;
  final int initialPage;
  final Object? heroTag;

  @override
  State<ImagePreviewPage> createState() => _ImagePreviewPageState();
}

class _ImagePreviewPageState extends State<ImagePreviewPage> {
  late final PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: widget.initialPage);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: PhotoViewGestureDetectorScope(
                axis: Axis.vertical,
                child: PhotoViewGallery.builder(
                  backgroundDecoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                  ),
                  itemCount: widget.imageUrls.length,
                  pageController: pageController,
                  builder: (BuildContext context, int index) {
                    return PhotoViewGalleryPageOptions(
                      imageProvider: CachedNetworkImageProvider(
                        widget.imageUrls[index],
                      ),
                      initialScale: PhotoViewComputedScale.contained * 0.9,
                      heroAttributes: PhotoViewHeroAttributes(
                          tag: widget.heroTag ?? widget.imageUrls[index]),
                    );
                  },
                  scrollPhysics: const BouncingScrollPhysics(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

RectTween _createRectTween(Rect? begin, Rect? end) {
  return MaterialRectCenterArcTween(begin: begin, end: end);
}

class RadialExpansion extends StatelessWidget {
  const RadialExpansion({
    Key? key,
    required this.maxRadius,
    this.child,
  })  : clipRectSize = 2.0 * (maxRadius / math.sqrt2),
        super(key: key);

  final double maxRadius;
  final double clipRectSize;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Center(
        child: SizedBox(
          width: clipRectSize,
          height: clipRectSize,
          child: ClipRect(
            child: child,
          ),
        ),
      ),
    );
  }
}

Widget Function(BuildContext, String, DownloadProgress, double)
    progressWidgetFn() =>
        (_, s, progress, size) => progressWidget(progress, size);

Widget progressWidget(DownloadProgress progress, double size) => Padding(
      padding: const EdgeInsets.all(3.0),
      child: Center(
        child: SizedBox(
          width: size,
          height: size,
          child: CircularProgressIndicator(
            value: progress.progress,
            strokeWidth: 2,
          ),
        ),
      ),
    );

Widget Function(BuildContext, String, dynamic) errorWidgetFn() =>
    (_, s, e) => errorWidget();

Widget errorWidget() => const Icon(FontAwesomeIcons.circleExclamation);

Widget noUserImageWidget(double size, Color? color) => Icon(
      FontAwesomeIcons.solidCircleUser,
      size: size,
      color: color,
    );
