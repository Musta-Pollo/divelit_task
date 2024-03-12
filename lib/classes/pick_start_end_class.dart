import 'dart:math' as math;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pick_start_end_class.freezed.dart';

enum SliderMode { startBeforeNow, startAfterNow, nothing }

@freezed
class PickStartEndClass with _$PickStartEndClass {
  factory PickStartEndClass({
    required DateTime start,
    required DateTime end,
    @Default(SliderMode.nothing) SliderMode sliderMode,
  }) = _PickStartEndClass;

  PickStartEndClass._();

  double get percentage {
    final now = DateTime.now();

    if (start.isBefore(now)) {
      final diff = start.difference(now).abs();
      final endDiff = end.difference(start).abs();
      final res = diff.inMicroseconds / endDiff.inMicroseconds;
      print("Count $res");
      return math.min(1.0, res);
    }
    return 0.0;
  }
}
