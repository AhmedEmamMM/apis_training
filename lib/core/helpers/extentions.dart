
import 'package:flutter/material.dart';

extension ExtNumber on num {
  get verticalSpace => SizedBox(height: (this).toDouble());
  get horizontalSpace => SizedBox(width: (this).toDouble());
}

