import 'dart:math' as math;

import 'package:divelit_task/components/percent_indicator.dart';
import 'package:divelit_task/module.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class ProgressSlider extends ConsumerWidget {
  const ProgressSlider({
    super.key,
    required this.percentage,
  });

  final double percentage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;

    return SleekCircularSlider(
      min: 0,
      max: 1,
      initialValue: percentage,
      appearance: CircularSliderAppearance(
        customWidths: CustomSliderWidths(
          handlerSize: 25,
          progressBarWidth: 50,
          // trackWidth: 10,
        ),
        animationEnabled: true,
        size: math.min(width * 0.85, 450),
        customColors: CustomSliderColors(
          trackColor: const Color(0xffA6A6CB),
          shadowColor: const Color(0x55A6A6CB),
          hideShadow: true,
          progressBarColors: [
            const Color(0xff5B5BB2),
            const Color(0xff5E5EB8),
            const Color(0xff6767C9),
            const Color(0xff7575D2),
            const Color(0xff8989E3),
          ].reversed.toList(),
        ),
      ),
      onChange: (double value) {
        ref.read(pickStartAndEndProvider.notifier).changePercentage(value);
      },
      onChangeEnd: (double endValue) {
        ref.read(pickStartAndEndProvider.notifier).changeSliderModeEnd();
      },
      innerWidget: (double value) {
        return Stack(
          children: [
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PercentIndicator(
                  percentage: percentage,
                  duration: ref.watch(pickStartAndEndProvider
                      .select((value) => value.duration)),
                ),
              ],
            )),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Consumer(
                    builder: (context, ref, child) {
                      final desc = ref.watch(pickStartAndEndProvider
                          .select((value) => value.desc));
                      return Text(
                        desc,
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white.withOpacity(0.6),
                        ),
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
