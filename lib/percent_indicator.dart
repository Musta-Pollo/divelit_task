import 'package:divelit_task/extensions/datetime_extension.dart';
import 'package:divelit_task/module.dart';
import 'package:duration/duration.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PercentIndicator extends ConsumerWidget {
  const PercentIndicator({
    super.key,
    required this.percentage,
    required this.duration,
  });

  final double percentage;
  final Duration duration;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: <Widget>[
        ResponsiveBuilder(builder: (context, sizingInformation) {
          return Column(
            children: [
              Text(
                "${(percentage * 100).toStringAsFixed(1)}%",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w900,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              const Gap(8),
              Text(
                "Current Time",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
              const Gap(4),
              Consumer(
                builder: (context, ref, child) {
                  final _ = ref.watch(currentTimeProvider);
                  return Text(
                    DateTime.now().formatted,
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  );
                },
              ),
              const Gap(16),
              Text(
                prettyDuration(
                  duration,
                  abbreviated: true,
                  tersity: DurationTersity.minute,
                  upperTersity: DurationTersity.hour,
                ),
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            ],
          );
        }),
      ],
    );
  }
}
