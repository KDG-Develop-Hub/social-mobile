import 'package:intl/intl.dart';

String formatDistanceFromNow(DateTime dateTime) {
  final now = DateTime.now();
  final diff = now.difference(dateTime);
  final minutes = diff.inMinutes;

  const oneHourPerMinutes = 60;
  const oneDayPerMinutes = 24 * oneHourPerMinutes;
  const oneWeekPerMinutes = 7 * oneDayPerMinutes;

  if (minutes < 1) {
    return 'たった今';
  }
  if (minutes < oneHourPerMinutes) {
    return '$minutes分前';
  }
  if (minutes < oneDayPerMinutes) {
    return '${minutes ~/ oneHourPerMinutes}時間前';
  }
  if (minutes < oneWeekPerMinutes * 2) {
    return '${minutes ~/ oneDayPerMinutes}日前';
  }

  return DateFormat('yyyy年M月d日').format(dateTime);
}
