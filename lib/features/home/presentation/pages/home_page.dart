import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/utils/di.dart';
import 'package:flutterhub/features/trending/presentation/pages/trending_page.dart';
import 'package:flutterhub/features/user/presentation/cubit/user_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(di()),
      child: const TrendingPage(),
    );
  }
}
