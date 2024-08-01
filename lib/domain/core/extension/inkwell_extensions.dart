import 'package:flutter/material.dart';

extension InkWellExtensions on Widget {
  Widget regularInkWell({Function? onTap}) {
    return InkWell(
        onTap: () => onTap!(),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: this);
  }
}
