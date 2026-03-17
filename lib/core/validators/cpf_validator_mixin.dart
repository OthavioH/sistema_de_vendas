import 'package:avaliacao_des_sistemas/l10n/app_localizations.dart';

mixin CpfValidatorMixin {
  String? validateCpf(String? value, [AppLocalizations? l10n]) {
    if (value == null || value.isEmpty) {
      return l10n?.cpfRequired ?? 'CPF é obrigatório';
    }

    final cpf = value.replaceAll(RegExp(r'[^0-9]'), '');

    if (cpf.length != 11) {
      return l10n?.cpfInvalidLength ?? 'CPF deve ter 11 dígitos';
    }

    if (RegExp(r'^(\d)\1*$').hasMatch(cpf)) {
      return l10n?.cpfInvalid ?? 'CPF inválido';
    }

    int sum1 = 0;
    for (int i = 0; i < 9; i++) {
      sum1 += int.parse(cpf[i]) * (10 - i);
    }
    int digit1 = 11 - (sum1 % 11);
    if (digit1 >= 10) digit1 = 0;

    int sum2 = 0;
    for (int i = 0; i < 10; i++) {
      sum2 += int.parse(cpf[i]) * (11 - i);
    }
    int digit2 = 11 - (sum2 % 11);
    if (digit2 >= 10) digit2 = 0;

    if (digit1 != int.parse(cpf[9]) || digit2 != int.parse(cpf[10])) {
      return l10n?.cpfInvalid ?? 'CPF inválido';
    }

    return null;
  }
}
