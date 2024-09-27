import 'package:flutter/material.dart';
import 'package:v_office_base/base/widget/base_app_bar.dart';
import 'package:v_office_base/generated/l10n.dart';

class DocumentScreen extends StatefulWidget {
  const DocumentScreen({super.key});

  @override
  State<DocumentScreen> createState() => _DocumentScreenState();
}

class _DocumentScreenState extends State<DocumentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        automaticallyImplyLeading: false,
        title: VOLocale.current.document_title,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
      ),
    );
  }
}
