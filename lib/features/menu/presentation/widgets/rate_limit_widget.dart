import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterhub/configs/constants.dart';
import 'package:flutterhub/features/menu/data/models/rate_limit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../configs/app_store.dart';
import '../../../../generated/l10n.dart';

class RateLimitWidget extends StatefulWidget {
  const RateLimitWidget({super.key});

  @override
  State<RateLimitWidget> createState() => _RateLimitWidgetState();
}

class _RateLimitWidgetState extends State<RateLimitWidget> {
  Timer? _timer;

  @override
  void initState() {
    // Run timer to update the rate limit every second
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (appStore.rateLimit.resetTime.isNegative) {
      appStore.rateLimit = RateLimit();
    }
    final rm = appStore.rateLimit;
    if (rm.limit == 0) {
      return Container();
    }
    return ListTile(
      title: Text(S.current.rateLimit),
      subtitle: Text('${rm.remaining}/${rm.limit}'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('${rm.resetMinutes}:${rm.resetSeconds}'),
          const SizedBox(width: spaceDefault),
          Icon(
            FontAwesomeIcons.solidCircle,
            size: 14,
            color: rm.remaining == 0 ? Colors.red : Colors.green,
          )
        ],
      ),
    );
  }
}
