import 'package:intl/intl.dart';

class CurrencyService {
  /// Formats the currency according to the locale.
  static String format(double amount, {required String locale, String symbol = r'R$'}) {
    return NumberFormat.currency(
      locale: locale,
      symbol: symbol,
    ).format(amount);
  }
}
