import 'package:flutter/material.dart';
import 'package:health_assitance_ui/commons/utils/app_colors.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: DateTime.now(),
      headerVisible: false,
      calendarFormat: CalendarFormat.week,
      daysOfWeekStyle: const DaysOfWeekStyle(
        weekdayStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.secondaryText
        ),
        weekendStyle: TextStyle(
          fontWeight: FontWeight.bold,
        )
      ),
      calendarStyle: CalendarStyle(
        todayDecoration: BoxDecoration(
          
          color: AppColors.primaryBackground,
          borderRadius: BorderRadius.circular(10)
        )
      ),
    );
  }
}
