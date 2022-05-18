import 'package:flutter/material.dart';
import 'package:flutterhub/configs/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

/// Server Failure error widget
Widget serverErrorWidget(String? message, String? url) {
  return NoDataWidget.error(
    subtitle: message,
    actionText: url != null ? 'Open Documentation' : null,
    onAction: url != null
        ? () async {
            try {
              launchUrl(Uri.parse(url));
            } on Exception catch (e) {
              debugPrint(e.toString());
            }
          }
        : null,
  );
}

Widget emptyUsersWidget() => NoDataWidget.empty(
      image: FontAwesomeIcons.user,
      title: 'No users found',
    );

Widget emptyRepositoriesWidget() => NoDataWidget.empty(
      image: FontAwesomeIcons.bookBookmark,
      title: 'No repositories found',
    );

Widget emptyLanguagesWidget() => NoDataWidget.empty(
      image: FontAwesomeIcons.code,
      title: 'No languages found',
    );

enum NoDataType { error, empty }

class NoDataWidget extends StatelessWidget {
  final NoDataType? type;
  final Widget? image;
  final double? imageSize;
  final String? title;
  final String? subtitle;
  final Function()? onAction;
  final String? actionText;
  final bool? wrapImageInCircle;
  final Color? imageBackgroundColor;

  const NoDataWidget._({
    this.type,
    this.image,
    this.imageSize,
    this.title,
    this.subtitle,
    this.onAction,
    this.actionText,
    this.wrapImageInCircle = true,
    this.imageBackgroundColor,
  });

  factory NoDataWidget.error({
    IconData? image,
    double? imageSize = 80,
    String? title,
    String? subtitle,
    Function()? onAction,
    String? actionText,
    bool? wrapImageInCircle,
    Color? imageBackgroundColor,
  }) {
    return NoDataWidget._(
      type: NoDataType.error,
      image: Icon(
        image ?? FontAwesomeIcons.xmark,
        size: imageSize,
      ),
      imageSize: imageSize,
      title: title ?? 'Something Went Wrong',
      subtitle: subtitle,
      onAction: onAction,
      actionText: actionText,
      wrapImageInCircle: wrapImageInCircle,
      imageBackgroundColor: imageBackgroundColor,
    );
  }

  factory NoDataWidget.empty({
    IconData? image,
    double? imageSize = 80,
    String? title,
    String? subtitle,
    Function()? onAction,
    String? actionText,
    bool? wrapImageInCircle,
    Color? imageBackgroundColor,
  }) {
    return NoDataWidget._(
      type: NoDataType.empty,
      image: Icon(
        image ?? FontAwesomeIcons.box,
        size: imageSize,
      ),
      imageSize: imageSize,
      title: title ?? 'No Results Found',
      subtitle: subtitle,
      onAction: onAction,
      actionText: actionText,
      wrapImageInCircle: wrapImageInCircle,
      imageBackgroundColor: imageBackgroundColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: paddingDefault,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (image != null)
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(imageSize ?? 0),
                    child: Stack(
                      children: [
                        Container(
                          width: (imageSize ?? 0) * 2,
                          height: (imageSize ?? 0) * 2,
                          color: imageBackgroundColor ??
                              Theme.of(context).cardColor,
                          child: image,
                        ),
                        Icon(
                          FontAwesomeIcons.slash,
                          size: (imageSize ?? 0) * 2,
                          color: Theme.of(context)
                              .colorScheme
                              .secondary
                              .withOpacity(0.8),
                        )
                      ],
                    ),
                  ),
                ),
              if (title != null)
                Text(
                  title!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              const SizedBox(height: spaceSmall2),
              if (subtitle != null)
                Text(
                  subtitle!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              const SizedBox(height: spaceMedium),
              if (actionText != null)
                TextButton(
                  onPressed: onAction,
                  child: Text(
                    actionText ?? '',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              const SizedBox(height: spaceMedium),
            ],
          ),
        ),
      ),
    );
  }
}
