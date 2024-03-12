import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

enum TimeType { start, end }

class SelectTimeWidget extends StatelessWidget {
  const SelectTimeWidget({
    super.key,
    required this.timeType,
  });

  final TimeType timeType;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        // color: const Color(0xff373743),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xffffa6a6cb).withOpacity(0.3),
        ),
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Start",
            style: GoogleFonts.nunito(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white.withOpacity(0.6),
            ),
          ),
          const Gap(6),
          Text(
            "12.10.2021 12:00",
            style: GoogleFonts.nunito(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const Gap(20),
          Container(
            decoration: BoxDecoration(
              // color: const Color.fromARGB(255, 28, 28, 31),
              borderRadius: BorderRadius.circular(8),
              color: Colors.white.withOpacity(0.05),
              border: Border.all(color: const Color(0xffffa6a6cb), width: 1.2),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Text(
              "Change",
              style: GoogleFonts.nunito(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
