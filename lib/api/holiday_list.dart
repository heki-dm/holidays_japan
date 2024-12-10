import 'package:dio/dio.dart';
import 'package:holidays_japan/converters/holiday.dart';
import 'package:logger/logger.dart';

/// 祝日一覧取得
Future<List<Holiday>> getHolidayList({int? year}) async {
  List<Holiday> holidays = [];
  Logger logger = Logger();

  // `year`の有無でリクエストURLを変更する
  final String url = year != null
      ? "https://holidays-jp.github.io/api/v1/$year/date.json"
      : "https://holidays-jp.github.io/api/v1/date.json";
  try {
    final Dio dio = Dio();
    final Response response = await dio.get(url);
    final Map<String, dynamic> data = response.data as Map<String, dynamic>;
    data.forEach((key, value) {
      holidays.add(Holiday.fromData(key, value));
    });
  } on DioException catch (error, stackTrace) {
    logger.e(error, stackTrace: stackTrace);
  } on Exception catch (error) {
    logger.e(error);
  }
  return holidays;
}
