// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Avaliação de Sistemas';

  @override
  String get total => 'Total';

  @override
  String get checkoutSuccess => 'Compra finalizada com sucesso!';

  @override
  String get cartTitle => 'Meu Carrinho';

  @override
  String get emptyCart => 'Seu carrinho está vazio.';

  @override
  String get each => 'cada';

  @override
  String get finish => 'Finalizar';

  @override
  String get checkout => 'Checkout';

  @override
  String get printPdf => 'Extrair Cupom para PDF';

  @override
  String get companyName => 'Empresa MCLonalds';

  @override
  String get customerLabel => 'Cliente';

  @override
  String get customerNotProvided => 'Cliente não informado';

  @override
  String get paymentLabel => 'Pagamento';

  @override
  String get paymentPix => 'PIX';

  @override
  String get paymentCreditCard => 'Cartão de crédito';

  @override
  String get paymentDebitCard => 'Cartão de débito';

  @override
  String get paymentCash => 'Dinheiro';

  @override
  String get currencySymbol => 'R\$';

  @override
  String get productListTitle => 'Lista de Produtos';

  @override
  String get loadError => 'Desculpe, não conseguimos carregar os produtos.';

  @override
  String get removeProductTitle => 'Remover produto';

  @override
  String get removeProductContent =>
      'Tem certeza de que deseja remover este produto do carrinho?';

  @override
  String get cancel => 'Cancelar';

  @override
  String get remove => 'Remover';

  @override
  String get cpfLabel => 'CPF';

  @override
  String get enterCpf => 'Informe o seu CPF';

  @override
  String get continueLabel => 'Continuar';

  @override
  String get paymentMethodTitle => 'Forma de pagamento';

  @override
  String get cpfRequired => 'CPF é obrigatório';

  @override
  String get cpfInvalidLength => 'CPF deve ter 11 dígitos';

  @override
  String get cpfInvalid => 'CPF inválido';
}
