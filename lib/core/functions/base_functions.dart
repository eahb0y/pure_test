import 'package:intl/intl.dart';
import 'package:pure_test/generated/l10n.dart';

class Functions{
  static String moneyFormat(num number) {
    String splitter = " ";
    final isNegative = number.isNegative;
    number = number.abs();
    String result = "0";
    result =
        NumberFormat("#,##0", "ru_RU").format(number).split(",").join(splitter);
    return isNegative
        ? "-$result ${AppLocalization.current.sum}"
        : "$result ${AppLocalization.current.sum}";
  }
}