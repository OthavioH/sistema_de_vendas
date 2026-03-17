
import 'package:drift/drift.dart';

class PurchaseEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  RealColumn get totalValue => real()();
  DateTimeColumn get date => dateTime().withDefault(currentDate)();
  TextColumn get userCPF => text().withLength(min: 11, max: 11)();
}