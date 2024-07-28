import 'package:flutter/cupertino.dart';

import '../utils/extensions/all_extensions.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoActivityIndicator().center();
  }
}
