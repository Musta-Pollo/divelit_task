import 'package:divelit_task/components/progress_slider.dart';
import 'package:divelit_task/components/select_time_widget.dart';
import 'package:divelit_task/module.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // I don't care about the value, I just want to rebuild the widget
    // every minute
    final _ = ref.watch(currentTimeProvider);
    final percentage =
        ref.watch(pickStartAndEndProvider.select((value) => value.percentage));
    return Scaffold(
        backgroundColor: const Color(0xff1e1e26),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 16),
          child: Column(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Select Start and End",
                    style: GoogleFonts.nunito(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  Container(
                    height: 2,
                    width: double.infinity,
                    color: const Color(0xff373743),
                  ),
                ],
              ),
              const Gap(40),
              ProgressSlider(percentage: percentage),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SelectTimeWidget(
                    timeType: TimeType.start,
                  ),
                  SelectTimeWidget(
                    timeType: TimeType.end,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
