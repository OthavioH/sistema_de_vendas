
import 'package:drift/drift.dart';

class SupplierEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(max: 255)();
  TextColumn get address => text().withLength(max: 255)();
}