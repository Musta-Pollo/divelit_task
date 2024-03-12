import 'package:divelit_task/module.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PercentIndicator extends ConsumerWidget {
  const PercentIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final percentage =
        ref.watch(pickStartAndEndProvider.select((value) => value.percentage));
    return Column(
      children: <Widget>[
        ResponsiveBuilder(builder: (context, sizingInformation) {
          return Column(
            children: [
              Text(
                "${percentage.toStringAsPrecision(2)}%",
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
              Text(
                "12.10.2021 12:00",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
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
