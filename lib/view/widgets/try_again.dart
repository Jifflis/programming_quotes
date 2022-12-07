import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class TryAgain extends StatelessWidget {
  const TryAgain({this.text, this.onTap, Key? key}) : super(key: key);
  final String? text;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    var string = S.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text ?? string.an_error_occurred,
          ),
          const SizedBox(height: 16),
          InkWell(
            onTap: onTap,
            child: Text(
              string.try_again,
            ),
          )
        ],
      ),
    );
  }
}
