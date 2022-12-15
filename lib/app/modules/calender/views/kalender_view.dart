import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/modules/Navigation/BottomNavigationBar.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../controllers/page_index_controller.dart';
import '../controllers/kalender_controller.dart';

class KalenderView extends GetView<KalenderController> {
  final PageC = Get.find<PageIndexController>();
  KalenderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ketapang Travel Guide"),
        centerTitle: true,
      ),
      body: SfCalendar(
        view: CalendarView.month,
        dataSource: MeetingDataSource(_getDataSource()),
        monthViewSettings: MonthViewSettings(
            appointmentDisplayMode: MonthAppointmentDisplayMode.indicator,
            showAgenda: true),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        PageC: PageC,
      ),
    );
  }
}

List<Meeting> _getDataSource() {
  final List<Meeting> meetings = <Meeting>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 0, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 1));
  meetings.add(Meeting('Festival Cap Gomeh', startTime, endTime,
      const Color(0xFF0F8644), false));
  return meetings;
}
