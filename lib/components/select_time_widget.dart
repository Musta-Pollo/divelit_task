import 'package:divelit_task/extensions/datetime_extension.dart';
import 'package:divelit_task/module.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum TimeType {
  start,
  end;

  String get name {
    switch (this) {
      case TimeType.start:
        return "Start";
      case TimeType.end:
        return "End";
    }
  }
}

class SelectTimeWidget extends ConsumerWidget {
  const SelectTimeWidget({
    super.key,
    required this.timeType,
  });

  final TimeType timeType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final time = ref.watch(pickStartAndEndProvider.select(
        (value) => timeType == TimeType.start ? value.start : value.end));
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xffffa6a6cb).withOpacity(0.3),
        ),
      ),
      child: Column(
        children: <Widget>[
          Text(
            timeType.name,
            style: GoogleFonts.nunito(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white.withOpacity(0.6),
            ),
          ),
          const Gap(6),
          Text(
            time.formatted,
            style: GoogleFonts.nunito(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const Gap(20),
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () async {
              final now = DateTime.now();
              final newDate = await showDatePicker(
                  context: context,
                  currentDate: time,
                  firstDate: now,
                  lastDate: DateTime(2030));
              if (newDate == null || !context.mounted) return;
              final newTime = await showTimePicker(
                context: context,
                initialTime: const TimeOfDay(hour: 12, minute: 0),
              );
              if (newTime == null) return;
              final newTimeCombined = DateTime(
                newDate.year,
                newDate.month,
                newDate.day,
                newTime.hour,
                newTime.minute,
              );
              if (timeType == TimeType.start) {
                ref
                    .read(pickStartAndEndProvider.notifier)
                    .changeStart(newTimeCombined);
              } else {
                ref
                    .read(pickStartAndEndProvider.notifier)
                    .changeEnd(newTimeCombined);
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white.withOpacity(0.05),
                border:
                    Border.all(color: const Color(0xffffa6a6cb), width: 1.2),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Text(
                "Change ${timeType.name}",
                style: GoogleFonts.nunito(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
