import 'package:avaliacao_des_sistemas/l10n/app_localizations.dart';
import 'package:avaliacao_des_sistemas/core/validators/cpf_validator_mixin.dart';
import 'package:avaliacao_des_sistemas/core/formatters/cpf_input_formatter.dart';
import 'package:flutter/material.dart';

class CpfBottomSheet extends StatefulWidget {
  final ValueChanged<String> onCpfConfirmed;

  const CpfBottomSheet({super.key, required this.onCpfConfirmed});

  @override
  State<CpfBottomSheet> createState() => _CpfBottomSheetState();
}

class _CpfBottomSheetState extends State<CpfBottomSheet> with CpfValidatorMixin {
  final _formKey = GlobalKey<FormState>();
  final _cpfController = TextEditingController();

  @override
  void dispose() {
    _cpfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      padding: EdgeInsets.only(
        top: 24.0,
        bottom: MediaQuery.of(context).viewInsets.bottom + 32.0,
        left: 16.0,
        right: 16.0,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.enterCpf,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _cpfController,
                keyboardType: TextInputType.number,
                inputFormatters: [CpfInputFormatter()],
                decoration: InputDecoration(
                  labelText: l10n.cpfLabel,
                  hintText: '000.000.000-00',
                  border: const OutlineInputBorder(),
                ),
                validator: (value) => validateCpf(value, l10n),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      widget.onCpfConfirmed(_cpfController.text);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                  ),
                  child: Text(l10n.continueLabel, style: const TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
