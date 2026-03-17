// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Assessment System';

  @override
  String get total => 'Total';

  @override
  String get checkoutSuccess => 'Purchase completed successfully!';

  @override
  String get cartTitle => 'My Cart';

  @override
  String get emptyCart => 'Your cart is empty.';

  @override
  String get each => 'each';

  @override
  String get finish => 'Finish';

  @override
  String get checkout => 'Checkout';

  @override
  String get printPdf => 'Extract Coupon to PDF';

  @override
  String get companyName => 'Company MCLonalds';

  @override
  String get customerLabel => 'Customer';

  @override
  String get customerNotProvided => 'Customer not provided';

  @override
  String get paymentLabel => 'Payment';

  @override
  String get paymentPix => 'PIX';

  @override
  String get paymentCreditCard => 'Credit Card';

  @override
  String get paymentDebitCard => 'Debit Card';

  @override
  String get paymentCash => 'Cash';

  @override
  String get currencySymbol => '\$';

  @override
  String get productListTitle => 'Product List';

  @override
  String get loadError => 'Sorry, we couldn\'t load the products.';

  @override
  String get removeProductTitle => 'Remove product';

  @override
  String get removeProductContent =>
      'Are you sure you want to remove this product from the cart?';

  @override
  String get cancel => 'Cancel';

  @override
  String get remove => 'Remove';

  @override
  String get cpfLabel => 'CPF';

  @override
  String get enterCpf => 'Enter your CPF';

  @override
  String get continueLabel => 'Continue';

  @override
  String get paymentMethodTitle => 'Payment Method';

  @override
  String get cpfRequired => 'CPF is required';

  @override
  String get cpfInvalidLength => 'CPF must be 11 digits';

  @override
  String get cpfInvalid => 'Invalid CPF';
}
