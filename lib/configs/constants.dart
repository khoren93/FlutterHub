import 'package:flutter/material.dart';

const kGithubApiBaseUrl = 'https://api.github.com';
const kStarHistoryBaseUrl = 'https://star-history.com';
const kProfileSummaryBaseUrl = 'https://profile-summary-for-github.com';

// ALL KEYS ARE DEMONSTRATIVE AND ARE USED FOR THE TEST.
const kGithubClientId = 'b2fe416e9e6796ee6363';
const kGithubClientSecret = 'a93cf9cbffecb02d44c24918c9a31a6933580737';
const kGithubScope = 'user+repo+notifications+read:org';
const kGithubRedirectUrl = 'flutterhub';
const kPerPage = 20;

const kUnexpectedError = 'Unexpected error';
const kUnknownServerError = 'Unknown server error';
const kNoInternetConnection = 'No internet connection';

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
const spaceMaxGridItemWidth = 192.0;

/// padding widgets
const paddingSmall = EdgeInsets.all(spaceSmall2);
const paddingSmallMedium =
    EdgeInsets.symmetric(vertical: spaceSmall2, horizontal: spaceMedium);
const paddingSmallDefault =
    EdgeInsets.symmetric(vertical: spaceSmall2, horizontal: spaceDefault);
const paddingDefault = EdgeInsets.all(spaceDefault);
const paddingDefaultLargeBottom =
    EdgeInsets.fromLTRB(spaceDefault, spaceDefault, spaceDefault, spaceLarge4);
