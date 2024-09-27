import 'package:flutter/material.dart';
import 'package:v_office_base/base/widget/base_app_bar.dart';
import 'package:v_office_base/generated/l10n.dart';

class SignScreen extends StatefulWidget {
  const SignScreen({super.key});

  @override
  State<SignScreen> createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: VOLocale.current.digital_sign,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
      ),
    );
  }
}
