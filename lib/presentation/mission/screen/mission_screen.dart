import 'package:flutter/material.dart';
import 'package:v_office_base/base/widget/base_app_bar.dart';
import 'package:v_office_base/generated/l10n.dart';

class MissionScreen extends StatefulWidget {
  const MissionScreen({super.key});

  @override
  State<MissionScreen> createState() => _MissionScreenState();
}

class _MissionScreenState extends State<MissionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        automaticallyImplyLeading: false,
        title: VOLocale.current.mission,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
      ),
    );
  }
}
