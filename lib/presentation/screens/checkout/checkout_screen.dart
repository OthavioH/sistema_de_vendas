import 'package:avaliacao_des_sistemas/domain/models/purchase_method.dart';
import 'package:avaliacao_des_sistemas/l10n/app_localizations.dart';
import 'package:avaliacao_des_sistemas/presentation/widgets/product_cart_bottom_sheet/checkout_controller.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class CheckoutScreen extends StatelessWidget {
  final CheckoutResult result;

  const CheckoutScreen({super.key, required this.result});

  Future<void> _generatePdf(BuildContext context) async {
    final l10n = AppLocalizations.of(context)!;
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.roll80,
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text('_______________________'),
              pw.Text(l10n.companyName),
              pw.Text('*******************************'),
              if (result.purchase.userCPF != null && result.purchase.userCPF!.isNotEmpty) ...[
                pw.Text('${l10n.customerLabel} ${result.purchase.userCPF}'),
                pw.Text(''),
              ] else ...[
                pw.Text(l10n.customerNotProvided),
                pw.Text(''),
              ],
              ...List.generate(result.purchase.products.length, (index) {
                final item = result.purchase.products[index];
                final subtotal = item.price * item.quantity;
                return pw.Text(
                    '${index + 1}. ${item.name} x ${item.quantity} = ${l10n.currencySymbol}${subtotal.toStringAsFixed(2)}');
              }),
              pw.Text(''),
              pw.Text('${l10n.total}: ${l10n.currencySymbol}${result.purchase.total.toStringAsFixed(2)}'),
              pw.Text('*******************************'),
              pw.Text('${l10n.paymentLabel}: ${_getLocalizedPaymentMethod(l10n, result.method)}'),
              pw.Text('-------------------------------'),
            ],
          );
        },
      ),
    );

    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save(),
    );
  }

  String _getLocalizedPaymentMethod(AppLocalizations l10n, PurchasePaymentMethod method) {
    switch (method) {
      case PurchasePaymentMethod.pix:
        return l10n.paymentPix;
      case PurchasePaymentMethod.creditCard:
        return l10n.paymentCreditCard;
      case PurchasePaymentMethod.debitCard:
        return l10n.paymentDebitCard;
      case PurchasePaymentMethod.cash:
        return l10n.paymentCash;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.checkout)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, color: Colors.green, size: 80),
            const SizedBox(height: 16),
            Text(
              l10n.checkoutSuccess,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () => _generatePdf(context),
              icon: const Icon(Icons.print),
              label: Text(l10n.printPdf),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
