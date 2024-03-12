import 'package:divelit_task/classes/pick_start_end_class.dart';
import 'package:divelit_task/extensions/datetime_extension.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'module.g.dart';

@riverpod
class PickStartAndEnd extends _$PickStartAndEnd {
  @override
  PickStartEndClass build() {
    return PickStartEndClass(
      start: DateTime.now(),
      end: DateTime.now().add(const Duration(minutes: 1)),
    );
  }

  void changeStart(DateTime newStart) {
    state = state.copyWith(start: newStart);
  }

  void changeEnd(DateTime newEnd) {
    state = state.copyWith(end: newEnd);
  }

  void changeSliderModeStart() {
    state = state.copyWith(
        sliderMode: state.percentage == 0.0
            ? SliderMode.startAfterNow
            : SliderMode.startBeforeNow);
  }

  void changeSliderModeEnd() {
    state = state.copyWith(sliderMode: SliderMode.nothing);
  }

  void changePercentage(double percentage) {
    //It is truncated to minutes to eliminate noise
    final now = DateTime.now().truncateToMinute;
    if (percentage == 0.0) percentage;
    if (state.sliderMode == SliderMode.startBeforeNow) {
      final diff = state.start.difference(now).abs();
      final addToNow = (diff.inMicroseconds * (1 - percentage)) ~/ percentage;
      state = state.copyWith(
          end: now.add(
        Duration(
            // ignore: division_optimization
            microseconds: addToNow),
      ));
    } else if (state.sliderMode == SliderMode.startAfterNow) {
      // 1 - percentage
      final diff = state.end.difference(now).abs();
      state = state.copyWith(
          start: state.end.subtract(
        Duration(
          microseconds: (diff.inMicroseconds.toDouble() ~/ (1 - percentage)),
        ),
      ));
    }
  }
}
