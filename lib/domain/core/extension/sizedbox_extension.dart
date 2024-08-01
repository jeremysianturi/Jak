import 'package:flutter/cupertino.dart';

extension SizedBoxExtension on double {
  Widget horizontalSpace() {
    return SizedBox(
      width: this,
    );
  }

  Widget verticalSpace() {
    return SizedBox(
      height: this,
    );
  }
}
