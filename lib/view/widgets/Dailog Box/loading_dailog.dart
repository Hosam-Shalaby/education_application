import 'package:education/view/widgets/loading_widget.dart';
import 'package:flutter/material.dart';

class LoadingAlertDailog extends StatelessWidget {
  const LoadingAlertDailog({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          circulerProgress(),
          const SizedBox(
            height: 10,
          ),
          const Text('Please wait...........')
        ],
      ),
    );
  }
}
