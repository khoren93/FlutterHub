import 'package:flutter/material.dart';

const githubScope = 'user+repo+notifications+read:org';
const kPerPage = 20;

/// space between widgets
const spaceSmall = 2.0;
const spaceSmall2 = 4.0;
const spaceMedium = 8.0;
const spaceDefault = 16.0;
const spaceLarge = 24.0;
const spaceLarge2 = 32.0;
const spaceLarge3 = 40.0;
const spaceLarge4 = 96.0;

const spaceMaxWidth = 736.0;

/// padding widgets
const paddingSmall = EdgeInsets.all(spaceSmall2);
const paddingSmallMedium =
    EdgeInsets.symmetric(vertical: spaceSmall2, horizontal: spaceMedium);
const paddingSmallDefault =
    EdgeInsets.symmetric(vertical: spaceSmall2, horizontal: spaceDefault);
const paddingDefault = EdgeInsets.all(spaceDefault);
const paddingDefaultLargeBottom =
    EdgeInsets.fromLTRB(spaceDefault, spaceDefault, spaceDefault, spaceLarge4);

/// text styles for widgets
const textStyleDefault = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
);
const textStyleDefaultBold = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
);
const textStyleDefaultLarge = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
);
const textStyleDefaultLargeBold = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
const textStyleDefaultLargeBold2 = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
);
