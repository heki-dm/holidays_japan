import 'package:flutter_test/flutter_test.dart';
import 'package:holidays_japan/api/holiday_list.dart';

import 'package:holidays_japan/holidays_japan.dart';
import 'package:logger/logger.dart';

void main() {
  test('Get holidays', () async {
    Logger logger = Logger();
    final List<Holiday> holidays = await getHolidayList();
    logger.i(holidays);
  });

  test('Get holidays by year', () async {
    Logger logger = Logger();
    final year = DateTime.now().year;
    final List<Holiday> holidays = await getHolidayList(year: year);
    logger.i(holidays);
  });
}
