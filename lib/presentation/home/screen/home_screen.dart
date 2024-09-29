// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:v_office_base/base/theme/utils.dart';
import 'package:v_office_base/base/utils/utils.dart';
import 'package:v_office_base/base/widget/base_app_bar.dart';
import 'package:v_office_base/generated/l10n.dart';
import 'package:v_office_base/presentation/home/cubit/home_cubit.dart';
import 'package:v_office_base/presentation/home/cubit/home_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<HomeCubit>(),
      child: HomeBody(),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeCubit>().initData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        automaticallyImplyLeading: false,
        title: VOLocale.current.home,
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.all(16),
            width: Utils.I.getSize.width,
            height: Utils.I.getSize.height,
            color: ThemeUtils.color.background,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [_buildUserInfo()],
            ),
          );
        },
      ),
    );
  }

  Widget _buildUserInfo() {
    final userInfoModel = context.read<HomeCubit>().userInfoModel;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${VOLocale.current.hello}, ${userInfoModel?.displayName}",
          style: ThemeUtils.textStyle.mediumTextBold,
        ),
        const SizedBox(height: 6),
        Text(
          "${userInfoModel?.displayJobTitle}",
          style: ThemeUtils.textStyle.subText!,
        ),
      ],
    );
  }
}
