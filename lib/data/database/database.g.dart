// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ProductEntityTable extends ProductEntity
    with TableInfo<$ProductEntityTable, ProductEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
    'price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _stockMeta = const VerificationMeta('stock');
  @override
  late final GeneratedColumn<int> stock = GeneratedColumn<int>(
    'stock',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, description, price, stock];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product_entity';
  @override
  VerificationContext validateIntegrity(
    Insertable<ProductEntityData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
        _priceMeta,
        price.isAcceptableOrUnknown(data['price']!, _priceMeta),
      );
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('stock')) {
      context.handle(
        _stockMeta,
        stock.isAcceptableOrUnknown(data['stock']!, _stockMeta),
      );
    } else if (isInserting) {
      context.missing(_stockMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductEntityData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      price: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}price'],
      )!,
      stock: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}stock'],
      )!,
    );
  }

  @override
  $ProductEntityTable createAlias(String alias) {
    return $ProductEntityTable(attachedDatabase, alias);
  }
}

class ProductEntityData extends DataClass
    implements Insertable<ProductEntityData> {
  final int id;
  final String name;
  final String description;
  final double price;
  final int stock;
  const ProductEntityData({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['description'] = Variable<String>(description);
    map['price'] = Variable<double>(price);
    map['stock'] = Variable<int>(stock);
    return map;
  }

  ProductEntityCompanion toCompanion(bool nullToAbsent) {
    return ProductEntityCompanion(
      id: Value(id),
      name: Value(name),
      description: Value(description),
      price: Value(price),
      stock: Value(stock),
    );
  }

  factory ProductEntityData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductEntityData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      price: serializer.fromJson<double>(json['price']),
      stock: serializer.fromJson<int>(json['stock']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'price': serializer.toJson<double>(price),
      'stock': serializer.toJson<int>(stock),
    };
  }

  ProductEntityData copyWith({
    int? id,
    String? name,
    String? description,
    double? price,
    int? stock,
  }) => ProductEntityData(
    id: id ?? this.id,
    name: name ?? this.name,
    description: description ?? this.description,
    price: price ?? this.price,
    stock: stock ?? this.stock,
  );
  ProductEntityData copyWithCompanion(ProductEntityCompanion data) {
    return ProductEntityData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      description: data.description.present
          ? data.description.value
          : this.description,
      price: data.price.present ? data.price.value : this.price,
      stock: data.stock.present ? data.stock.value : this.stock,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductEntityData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('price: $price, ')
          ..write('stock: $stock')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, description, price, stock);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductEntityData &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.price == this.price &&
          other.stock == this.stock);
}

class ProductEntityCompanion extends UpdateCompanion<ProductEntityData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> description;
  final Value<double> price;
  final Value<int> stock;
  const ProductEntityCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.price = const Value.absent(),
    this.stock = const Value.absent(),
  });
  ProductEntityCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String description,
    required double price,
    required int stock,
  }) : name = Value(name),
       description = Value(description),
       price = Value(price),
       stock = Value(stock);
  static Insertable<ProductEntityData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<double>? price,
    Expression<int>? stock,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (price != null) 'price': price,
      if (stock != null) 'stock': stock,
    });
  }

  ProductEntityCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String>? description,
    Value<double>? price,
    Value<int>? stock,
  }) {
    return ProductEntityCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      stock: stock ?? this.stock,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (stock.present) {
      map['stock'] = Variable<int>(stock.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductEntityCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('price: $price, ')
          ..write('stock: $stock')
          ..write(')'))
        .toString();
  }
}

class $SupplierEntityTable extends SupplierEntity
    with TableInfo<$SupplierEntityTable, SupplierEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SupplierEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _addressMeta = const VerificationMeta(
    'address',
  );
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
    'address',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, address];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'supplier_entity';
  @override
  VerificationContext validateIntegrity(
    Insertable<SupplierEntityData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('address')) {
      context.handle(
        _addressMeta,
        address.isAcceptableOrUnknown(data['address']!, _addressMeta),
      );
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SupplierEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SupplierEntityData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      address: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address'],
      )!,
    );
  }

  @override
  $SupplierEntityTable createAlias(String alias) {
    return $SupplierEntityTable(attachedDatabase, alias);
  }
}

class SupplierEntityData extends DataClass
    implements Insertable<SupplierEntityData> {
  final int id;
  final String name;
  final String address;
  const SupplierEntityData({
    required this.id,
    required this.name,
    required this.address,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['address'] = Variable<String>(address);
    return map;
  }

  SupplierEntityCompanion toCompanion(bool nullToAbsent) {
    return SupplierEntityCompanion(
      id: Value(id),
      name: Value(name),
      address: Value(address),
    );
  }

  factory SupplierEntityData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SupplierEntityData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      address: serializer.fromJson<String>(json['address']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'address': serializer.toJson<String>(address),
    };
  }

  SupplierEntityData copyWith({int? id, String? name, String? address}) =>
      SupplierEntityData(
        id: id ?? this.id,
        name: name ?? this.name,
        address: address ?? this.address,
      );
  SupplierEntityData copyWithCompanion(SupplierEntityCompanion data) {
    return SupplierEntityData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      address: data.address.present ? data.address.value : this.address,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SupplierEntityData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('address: $address')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, address);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SupplierEntityData &&
          other.id == this.id &&
          other.name == this.name &&
          other.address == this.address);
}

class SupplierEntityCompanion extends UpdateCompanion<SupplierEntityData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> address;
  const SupplierEntityCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.address = const Value.absent(),
  });
  SupplierEntityCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String address,
  }) : name = Value(name),
       address = Value(address);
  static Insertable<SupplierEntityData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? address,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (address != null) 'address': address,
    });
  }

  SupplierEntityCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String>? address,
  }) {
    return SupplierEntityCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SupplierEntityCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('address: $address')
          ..write(')'))
        .toString();
  }
}

class $ProductSupplierEntityTable extends ProductSupplierEntity
    with TableInfo<$ProductSupplierEntityTable, ProductSupplierEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductSupplierEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _productIdMeta = const VerificationMeta(
    'productId',
  );
  @override
  late final GeneratedColumn<int> productId = GeneratedColumn<int>(
    'product_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES product_entity (id)',
    ),
  );
  static const VerificationMeta _supplierIdMeta = const VerificationMeta(
    'supplierId',
  );
  @override
  late final GeneratedColumn<int> supplierId = GeneratedColumn<int>(
    'supplier_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES supplier_entity (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [productId, supplierId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product_supplier_entity';
  @override
  VerificationContext validateIntegrity(
    Insertable<ProductSupplierEntityData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('product_id')) {
      context.handle(
        _productIdMeta,
        productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta),
      );
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('supplier_id')) {
      context.handle(
        _supplierIdMeta,
        supplierId.isAcceptableOrUnknown(data['supplier_id']!, _supplierIdMeta),
      );
    } else if (isInserting) {
      context.missing(_supplierIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {productId, supplierId};
  @override
  ProductSupplierEntityData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductSupplierEntityData(
      productId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}product_id'],
      )!,
      supplierId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}supplier_id'],
      )!,
    );
  }

  @override
  $ProductSupplierEntityTable createAlias(String alias) {
    return $ProductSupplierEntityTable(attachedDatabase, alias);
  }
}

class ProductSupplierEntityData extends DataClass
    implements Insertable<ProductSupplierEntityData> {
  final int productId;
  final int supplierId;
  const ProductSupplierEntityData({
    required this.productId,
    required this.supplierId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['product_id'] = Variable<int>(productId);
    map['supplier_id'] = Variable<int>(supplierId);
    return map;
  }

  ProductSupplierEntityCompanion toCompanion(bool nullToAbsent) {
    return ProductSupplierEntityCompanion(
      productId: Value(productId),
      supplierId: Value(supplierId),
    );
  }

  factory ProductSupplierEntityData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductSupplierEntityData(
      productId: serializer.fromJson<int>(json['productId']),
      supplierId: serializer.fromJson<int>(json['supplierId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'productId': serializer.toJson<int>(productId),
      'supplierId': serializer.toJson<int>(supplierId),
    };
  }

  ProductSupplierEntityData copyWith({int? productId, int? supplierId}) =>
      ProductSupplierEntityData(
        productId: productId ?? this.productId,
        supplierId: supplierId ?? this.supplierId,
      );
  ProductSupplierEntityData copyWithCompanion(
    ProductSupplierEntityCompanion data,
  ) {
    return ProductSupplierEntityData(
      productId: data.productId.present ? data.productId.value : this.productId,
      supplierId: data.supplierId.present
          ? data.supplierId.value
          : this.supplierId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductSupplierEntityData(')
          ..write('productId: $productId, ')
          ..write('supplierId: $supplierId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(productId, supplierId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductSupplierEntityData &&
          other.productId == this.productId &&
          other.supplierId == this.supplierId);
}

class ProductSupplierEntityCompanion
    extends UpdateCompanion<ProductSupplierEntityData> {
  final Value<int> productId;
  final Value<int> supplierId;
  final Value<int> rowid;
  const ProductSupplierEntityCompanion({
    this.productId = const Value.absent(),
    this.supplierId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProductSupplierEntityCompanion.insert({
    required int productId,
    required int supplierId,
    this.rowid = const Value.absent(),
  }) : productId = Value(productId),
       supplierId = Value(supplierId);
  static Insertable<ProductSupplierEntityData> custom({
    Expression<int>? productId,
    Expression<int>? supplierId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (productId != null) 'product_id': productId,
      if (supplierId != null) 'supplier_id': supplierId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProductSupplierEntityCompanion copyWith({
    Value<int>? productId,
    Value<int>? supplierId,
    Value<int>? rowid,
  }) {
    return ProductSupplierEntityCompanion(
      productId: productId ?? this.productId,
      supplierId: supplierId ?? this.supplierId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (productId.present) {
      map['product_id'] = Variable<int>(productId.value);
    }
    if (supplierId.present) {
      map['supplier_id'] = Variable<int>(supplierId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductSupplierEntityCompanion(')
          ..write('productId: $productId, ')
          ..write('supplierId: $supplierId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PurchaseEntityTable extends PurchaseEntity
    with TableInfo<$PurchaseEntityTable, PurchaseEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PurchaseEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _totalValueMeta = const VerificationMeta(
    'totalValue',
  );
  @override
  late final GeneratedColumn<double> totalValue = GeneratedColumn<double>(
    'total_value',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDate,
  );
  static const VerificationMeta _userCPFMeta = const VerificationMeta(
    'userCPF',
  );
  @override
  late final GeneratedColumn<String> userCPF = GeneratedColumn<String>(
    'user_c_p_f',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 11,
      maxTextLength: 11,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, totalValue, date, userCPF];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'purchase_entity';
  @override
  VerificationContext validateIntegrity(
    Insertable<PurchaseEntityData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('total_value')) {
      context.handle(
        _totalValueMeta,
        totalValue.isAcceptableOrUnknown(data['total_value']!, _totalValueMeta),
      );
    } else if (isInserting) {
      context.missing(_totalValueMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    }
    if (data.containsKey('user_c_p_f')) {
      context.handle(
        _userCPFMeta,
        userCPF.isAcceptableOrUnknown(data['user_c_p_f']!, _userCPFMeta),
      );
    } else if (isInserting) {
      context.missing(_userCPFMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PurchaseEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PurchaseEntityData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      totalValue: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}total_value'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      userCPF: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_c_p_f'],
      )!,
    );
  }

  @override
  $PurchaseEntityTable createAlias(String alias) {
    return $PurchaseEntityTable(attachedDatabase, alias);
  }
}

class PurchaseEntityData extends DataClass
    implements Insertable<PurchaseEntityData> {
  final int id;
  final double totalValue;
  final DateTime date;
  final String userCPF;
  const PurchaseEntityData({
    required this.id,
    required this.totalValue,
    required this.date,
    required this.userCPF,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['total_value'] = Variable<double>(totalValue);
    map['date'] = Variable<DateTime>(date);
    map['user_c_p_f'] = Variable<String>(userCPF);
    return map;
  }

  PurchaseEntityCompanion toCompanion(bool nullToAbsent) {
    return PurchaseEntityCompanion(
      id: Value(id),
      totalValue: Value(totalValue),
      date: Value(date),
      userCPF: Value(userCPF),
    );
  }

  factory PurchaseEntityData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PurchaseEntityData(
      id: serializer.fromJson<int>(json['id']),
      totalValue: serializer.fromJson<double>(json['totalValue']),
      date: serializer.fromJson<DateTime>(json['date']),
      userCPF: serializer.fromJson<String>(json['userCPF']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'totalValue': serializer.toJson<double>(totalValue),
      'date': serializer.toJson<DateTime>(date),
      'userCPF': serializer.toJson<String>(userCPF),
    };
  }

  PurchaseEntityData copyWith({
    int? id,
    double? totalValue,
    DateTime? date,
    String? userCPF,
  }) => PurchaseEntityData(
    id: id ?? this.id,
    totalValue: totalValue ?? this.totalValue,
    date: date ?? this.date,
    userCPF: userCPF ?? this.userCPF,
  );
  PurchaseEntityData copyWithCompanion(PurchaseEntityCompanion data) {
    return PurchaseEntityData(
      id: data.id.present ? data.id.value : this.id,
      totalValue: data.totalValue.present
          ? data.totalValue.value
          : this.totalValue,
      date: data.date.present ? data.date.value : this.date,
      userCPF: data.userCPF.present ? data.userCPF.value : this.userCPF,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PurchaseEntityData(')
          ..write('id: $id, ')
          ..write('totalValue: $totalValue, ')
          ..write('date: $date, ')
          ..write('userCPF: $userCPF')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, totalValue, date, userCPF);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PurchaseEntityData &&
          other.id == this.id &&
          other.totalValue == this.totalValue &&
          other.date == this.date &&
          other.userCPF == this.userCPF);
}

class PurchaseEntityCompanion extends UpdateCompanion<PurchaseEntityData> {
  final Value<int> id;
  final Value<double> totalValue;
  final Value<DateTime> date;
  final Value<String> userCPF;
  const PurchaseEntityCompanion({
    this.id = const Value.absent(),
    this.totalValue = const Value.absent(),
    this.date = const Value.absent(),
    this.userCPF = const Value.absent(),
  });
  PurchaseEntityCompanion.insert({
    this.id = const Value.absent(),
    required double totalValue,
    this.date = const Value.absent(),
    required String userCPF,
  }) : totalValue = Value(totalValue),
       userCPF = Value(userCPF);
  static Insertable<PurchaseEntityData> custom({
    Expression<int>? id,
    Expression<double>? totalValue,
    Expression<DateTime>? date,
    Expression<String>? userCPF,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (totalValue != null) 'total_value': totalValue,
      if (date != null) 'date': date,
      if (userCPF != null) 'user_c_p_f': userCPF,
    });
  }

  PurchaseEntityCompanion copyWith({
    Value<int>? id,
    Value<double>? totalValue,
    Value<DateTime>? date,
    Value<String>? userCPF,
  }) {
    return PurchaseEntityCompanion(
      id: id ?? this.id,
      totalValue: totalValue ?? this.totalValue,
      date: date ?? this.date,
      userCPF: userCPF ?? this.userCPF,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (totalValue.present) {
      map['total_value'] = Variable<double>(totalValue.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (userCPF.present) {
      map['user_c_p_f'] = Variable<String>(userCPF.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PurchaseEntityCompanion(')
          ..write('id: $id, ')
          ..write('totalValue: $totalValue, ')
          ..write('date: $date, ')
          ..write('userCPF: $userCPF')
          ..write(')'))
        .toString();
  }
}

class $PurchaseProductEntityTable extends PurchaseProductEntity
    with TableInfo<$PurchaseProductEntityTable, PurchaseProductEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PurchaseProductEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _purchaseIdMeta = const VerificationMeta(
    'purchaseId',
  );
  @override
  late final GeneratedColumn<int> purchaseId = GeneratedColumn<int>(
    'purchase_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES purchase_entity (id)',
    ),
  );
  static const VerificationMeta _productIdMeta = const VerificationMeta(
    'productId',
  );
  @override
  late final GeneratedColumn<int> productId = GeneratedColumn<int>(
    'product_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES product_entity (id)',
    ),
  );
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
    'price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    purchaseId,
    productId,
    quantity,
    price,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'purchase_product_entity';
  @override
  VerificationContext validateIntegrity(
    Insertable<PurchaseProductEntityData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('purchase_id')) {
      context.handle(
        _purchaseIdMeta,
        purchaseId.isAcceptableOrUnknown(data['purchase_id']!, _purchaseIdMeta),
      );
    } else if (isInserting) {
      context.missing(_purchaseIdMeta);
    }
    if (data.containsKey('product_id')) {
      context.handle(
        _productIdMeta,
        productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta),
      );
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
        _priceMeta,
        price.isAcceptableOrUnknown(data['price']!, _priceMeta),
      );
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PurchaseProductEntityData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PurchaseProductEntityData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      purchaseId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}purchase_id'],
      )!,
      productId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}product_id'],
      )!,
      quantity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quantity'],
      )!,
      price: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}price'],
      )!,
    );
  }

  @override
  $PurchaseProductEntityTable createAlias(String alias) {
    return $PurchaseProductEntityTable(attachedDatabase, alias);
  }
}

class PurchaseProductEntityData extends DataClass
    implements Insertable<PurchaseProductEntityData> {
  final int id;
  final int purchaseId;
  final int productId;
  final int quantity;
  final double price;
  const PurchaseProductEntityData({
    required this.id,
    required this.purchaseId,
    required this.productId,
    required this.quantity,
    required this.price,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['purchase_id'] = Variable<int>(purchaseId);
    map['product_id'] = Variable<int>(productId);
    map['quantity'] = Variable<int>(quantity);
    map['price'] = Variable<double>(price);
    return map;
  }

  PurchaseProductEntityCompanion toCompanion(bool nullToAbsent) {
    return PurchaseProductEntityCompanion(
      id: Value(id),
      purchaseId: Value(purchaseId),
      productId: Value(productId),
      quantity: Value(quantity),
      price: Value(price),
    );
  }

  factory PurchaseProductEntityData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PurchaseProductEntityData(
      id: serializer.fromJson<int>(json['id']),
      purchaseId: serializer.fromJson<int>(json['purchaseId']),
      productId: serializer.fromJson<int>(json['productId']),
      quantity: serializer.fromJson<int>(json['quantity']),
      price: serializer.fromJson<double>(json['price']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'purchaseId': serializer.toJson<int>(purchaseId),
      'productId': serializer.toJson<int>(productId),
      'quantity': serializer.toJson<int>(quantity),
      'price': serializer.toJson<double>(price),
    };
  }

  PurchaseProductEntityData copyWith({
    int? id,
    int? purchaseId,
    int? productId,
    int? quantity,
    double? price,
  }) => PurchaseProductEntityData(
    id: id ?? this.id,
    purchaseId: purchaseId ?? this.purchaseId,
    productId: productId ?? this.productId,
    quantity: quantity ?? this.quantity,
    price: price ?? this.price,
  );
  PurchaseProductEntityData copyWithCompanion(
    PurchaseProductEntityCompanion data,
  ) {
    return PurchaseProductEntityData(
      id: data.id.present ? data.id.value : this.id,
      purchaseId: data.purchaseId.present
          ? data.purchaseId.value
          : this.purchaseId,
      productId: data.productId.present ? data.productId.value : this.productId,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      price: data.price.present ? data.price.value : this.price,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PurchaseProductEntityData(')
          ..write('id: $id, ')
          ..write('purchaseId: $purchaseId, ')
          ..write('productId: $productId, ')
          ..write('quantity: $quantity, ')
          ..write('price: $price')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, purchaseId, productId, quantity, price);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PurchaseProductEntityData &&
          other.id == this.id &&
          other.purchaseId == this.purchaseId &&
          other.productId == this.productId &&
          other.quantity == this.quantity &&
          other.price == this.price);
}

class PurchaseProductEntityCompanion
    extends UpdateCompanion<PurchaseProductEntityData> {
  final Value<int> id;
  final Value<int> purchaseId;
  final Value<int> productId;
  final Value<int> quantity;
  final Value<double> price;
  const PurchaseProductEntityCompanion({
    this.id = const Value.absent(),
    this.purchaseId = const Value.absent(),
    this.productId = const Value.absent(),
    this.quantity = const Value.absent(),
    this.price = const Value.absent(),
  });
  PurchaseProductEntityCompanion.insert({
    this.id = const Value.absent(),
    required int purchaseId,
    required int productId,
    required int quantity,
    required double price,
  }) : purchaseId = Value(purchaseId),
       productId = Value(productId),
       quantity = Value(quantity),
       price = Value(price);
  static Insertable<PurchaseProductEntityData> custom({
    Expression<int>? id,
    Expression<int>? purchaseId,
    Expression<int>? productId,
    Expression<int>? quantity,
    Expression<double>? price,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (purchaseId != null) 'purchase_id': purchaseId,
      if (productId != null) 'product_id': productId,
      if (quantity != null) 'quantity': quantity,
      if (price != null) 'price': price,
    });
  }

  PurchaseProductEntityCompanion copyWith({
    Value<int>? id,
    Value<int>? purchaseId,
    Value<int>? productId,
    Value<int>? quantity,
    Value<double>? price,
  }) {
    return PurchaseProductEntityCompanion(
      id: id ?? this.id,
      purchaseId: purchaseId ?? this.purchaseId,
      productId: productId ?? this.productId,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (purchaseId.present) {
      map['purchase_id'] = Variable<int>(purchaseId.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<int>(productId.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PurchaseProductEntityCompanion(')
          ..write('id: $id, ')
          ..write('purchaseId: $purchaseId, ')
          ..write('productId: $productId, ')
          ..write('quantity: $quantity, ')
          ..write('price: $price')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ProductEntityTable productEntity = $ProductEntityTable(this);
  late final $SupplierEntityTable supplierEntity = $SupplierEntityTable(this);
  late final $ProductSupplierEntityTable productSupplierEntity =
      $ProductSupplierEntityTable(this);
  late final $PurchaseEntityTable purchaseEntity = $PurchaseEntityTable(this);
  late final $PurchaseProductEntityTable purchaseProductEntity =
      $PurchaseProductEntityTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    productEntity,
    supplierEntity,
    productSupplierEntity,
    purchaseEntity,
    purchaseProductEntity,
  ];
}

typedef $$ProductEntityTableCreateCompanionBuilder =
    ProductEntityCompanion Function({
      Value<int> id,
      required String name,
      required String description,
      required double price,
      required int stock,
    });
typedef $$ProductEntityTableUpdateCompanionBuilder =
    ProductEntityCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String> description,
      Value<double> price,
      Value<int> stock,
    });

final class $$ProductEntityTableReferences
    extends
        BaseReferences<_$AppDatabase, $ProductEntityTable, ProductEntityData> {
  $$ProductEntityTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<
    $ProductSupplierEntityTable,
    List<ProductSupplierEntityData>
  >
  _productSupplierEntityRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.productSupplierEntity,
        aliasName: $_aliasNameGenerator(
          db.productEntity.id,
          db.productSupplierEntity.productId,
        ),
      );

  $$ProductSupplierEntityTableProcessedTableManager
  get productSupplierEntityRefs {
    final manager = $$ProductSupplierEntityTableTableManager(
      $_db,
      $_db.productSupplierEntity,
    ).filter((f) => f.productId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _productSupplierEntityRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $PurchaseProductEntityTable,
    List<PurchaseProductEntityData>
  >
  _purchaseProductEntityRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.purchaseProductEntity,
        aliasName: $_aliasNameGenerator(
          db.productEntity.id,
          db.purchaseProductEntity.productId,
        ),
      );

  $$PurchaseProductEntityTableProcessedTableManager
  get purchaseProductEntityRefs {
    final manager = $$PurchaseProductEntityTableTableManager(
      $_db,
      $_db.purchaseProductEntity,
    ).filter((f) => f.productId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _purchaseProductEntityRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ProductEntityTableFilterComposer
    extends Composer<_$AppDatabase, $ProductEntityTable> {
  $$ProductEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get stock => $composableBuilder(
    column: $table.stock,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> productSupplierEntityRefs(
    Expression<bool> Function($$ProductSupplierEntityTableFilterComposer f) f,
  ) {
    final $$ProductSupplierEntityTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.productSupplierEntity,
          getReferencedColumn: (t) => t.productId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$ProductSupplierEntityTableFilterComposer(
                $db: $db,
                $table: $db.productSupplierEntity,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<bool> purchaseProductEntityRefs(
    Expression<bool> Function($$PurchaseProductEntityTableFilterComposer f) f,
  ) {
    final $$PurchaseProductEntityTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.purchaseProductEntity,
          getReferencedColumn: (t) => t.productId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$PurchaseProductEntityTableFilterComposer(
                $db: $db,
                $table: $db.purchaseProductEntity,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$ProductEntityTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductEntityTable> {
  $$ProductEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get stock => $composableBuilder(
    column: $table.stock,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ProductEntityTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductEntityTable> {
  $$ProductEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<int> get stock =>
      $composableBuilder(column: $table.stock, builder: (column) => column);

  Expression<T> productSupplierEntityRefs<T extends Object>(
    Expression<T> Function($$ProductSupplierEntityTableAnnotationComposer a) f,
  ) {
    final $$ProductSupplierEntityTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.productSupplierEntity,
          getReferencedColumn: (t) => t.productId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$ProductSupplierEntityTableAnnotationComposer(
                $db: $db,
                $table: $db.productSupplierEntity,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> purchaseProductEntityRefs<T extends Object>(
    Expression<T> Function($$PurchaseProductEntityTableAnnotationComposer a) f,
  ) {
    final $$PurchaseProductEntityTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.purchaseProductEntity,
          getReferencedColumn: (t) => t.productId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$PurchaseProductEntityTableAnnotationComposer(
                $db: $db,
                $table: $db.purchaseProductEntity,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$ProductEntityTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProductEntityTable,
          ProductEntityData,
          $$ProductEntityTableFilterComposer,
          $$ProductEntityTableOrderingComposer,
          $$ProductEntityTableAnnotationComposer,
          $$ProductEntityTableCreateCompanionBuilder,
          $$ProductEntityTableUpdateCompanionBuilder,
          (ProductEntityData, $$ProductEntityTableReferences),
          ProductEntityData,
          PrefetchHooks Function({
            bool productSupplierEntityRefs,
            bool purchaseProductEntityRefs,
          })
        > {
  $$ProductEntityTableTableManager(_$AppDatabase db, $ProductEntityTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductEntityTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<double> price = const Value.absent(),
                Value<int> stock = const Value.absent(),
              }) => ProductEntityCompanion(
                id: id,
                name: name,
                description: description,
                price: price,
                stock: stock,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required String description,
                required double price,
                required int stock,
              }) => ProductEntityCompanion.insert(
                id: id,
                name: name,
                description: description,
                price: price,
                stock: stock,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ProductEntityTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                productSupplierEntityRefs = false,
                purchaseProductEntityRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (productSupplierEntityRefs) db.productSupplierEntity,
                    if (purchaseProductEntityRefs) db.purchaseProductEntity,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (productSupplierEntityRefs)
                        await $_getPrefetchedData<
                          ProductEntityData,
                          $ProductEntityTable,
                          ProductSupplierEntityData
                        >(
                          currentTable: table,
                          referencedTable: $$ProductEntityTableReferences
                              ._productSupplierEntityRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProductEntityTableReferences(
                                db,
                                table,
                                p0,
                              ).productSupplierEntityRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.productId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (purchaseProductEntityRefs)
                        await $_getPrefetchedData<
                          ProductEntityData,
                          $ProductEntityTable,
                          PurchaseProductEntityData
                        >(
                          currentTable: table,
                          referencedTable: $$ProductEntityTableReferences
                              ._purchaseProductEntityRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProductEntityTableReferences(
                                db,
                                table,
                                p0,
                              ).purchaseProductEntityRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.productId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$ProductEntityTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProductEntityTable,
      ProductEntityData,
      $$ProductEntityTableFilterComposer,
      $$ProductEntityTableOrderingComposer,
      $$ProductEntityTableAnnotationComposer,
      $$ProductEntityTableCreateCompanionBuilder,
      $$ProductEntityTableUpdateCompanionBuilder,
      (ProductEntityData, $$ProductEntityTableReferences),
      ProductEntityData,
      PrefetchHooks Function({
        bool productSupplierEntityRefs,
        bool purchaseProductEntityRefs,
      })
    >;
typedef $$SupplierEntityTableCreateCompanionBuilder =
    SupplierEntityCompanion Function({
      Value<int> id,
      required String name,
      required String address,
    });
typedef $$SupplierEntityTableUpdateCompanionBuilder =
    SupplierEntityCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String> address,
    });

final class $$SupplierEntityTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $SupplierEntityTable,
          SupplierEntityData
        > {
  $$SupplierEntityTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<
    $ProductSupplierEntityTable,
    List<ProductSupplierEntityData>
  >
  _productSupplierEntityRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.productSupplierEntity,
        aliasName: $_aliasNameGenerator(
          db.supplierEntity.id,
          db.productSupplierEntity.supplierId,
        ),
      );

  $$ProductSupplierEntityTableProcessedTableManager
  get productSupplierEntityRefs {
    final manager = $$ProductSupplierEntityTableTableManager(
      $_db,
      $_db.productSupplierEntity,
    ).filter((f) => f.supplierId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _productSupplierEntityRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$SupplierEntityTableFilterComposer
    extends Composer<_$AppDatabase, $SupplierEntityTable> {
  $$SupplierEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> productSupplierEntityRefs(
    Expression<bool> Function($$ProductSupplierEntityTableFilterComposer f) f,
  ) {
    final $$ProductSupplierEntityTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.productSupplierEntity,
          getReferencedColumn: (t) => t.supplierId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$ProductSupplierEntityTableFilterComposer(
                $db: $db,
                $table: $db.productSupplierEntity,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$SupplierEntityTableOrderingComposer
    extends Composer<_$AppDatabase, $SupplierEntityTable> {
  $$SupplierEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SupplierEntityTableAnnotationComposer
    extends Composer<_$AppDatabase, $SupplierEntityTable> {
  $$SupplierEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  Expression<T> productSupplierEntityRefs<T extends Object>(
    Expression<T> Function($$ProductSupplierEntityTableAnnotationComposer a) f,
  ) {
    final $$ProductSupplierEntityTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.productSupplierEntity,
          getReferencedColumn: (t) => t.supplierId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$ProductSupplierEntityTableAnnotationComposer(
                $db: $db,
                $table: $db.productSupplierEntity,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$SupplierEntityTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SupplierEntityTable,
          SupplierEntityData,
          $$SupplierEntityTableFilterComposer,
          $$SupplierEntityTableOrderingComposer,
          $$SupplierEntityTableAnnotationComposer,
          $$SupplierEntityTableCreateCompanionBuilder,
          $$SupplierEntityTableUpdateCompanionBuilder,
          (SupplierEntityData, $$SupplierEntityTableReferences),
          SupplierEntityData,
          PrefetchHooks Function({bool productSupplierEntityRefs})
        > {
  $$SupplierEntityTableTableManager(
    _$AppDatabase db,
    $SupplierEntityTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SupplierEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SupplierEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SupplierEntityTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> address = const Value.absent(),
              }) =>
                  SupplierEntityCompanion(id: id, name: name, address: address),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required String address,
              }) => SupplierEntityCompanion.insert(
                id: id,
                name: name,
                address: address,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$SupplierEntityTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({productSupplierEntityRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (productSupplierEntityRefs) db.productSupplierEntity,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (productSupplierEntityRefs)
                    await $_getPrefetchedData<
                      SupplierEntityData,
                      $SupplierEntityTable,
                      ProductSupplierEntityData
                    >(
                      currentTable: table,
                      referencedTable: $$SupplierEntityTableReferences
                          ._productSupplierEntityRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$SupplierEntityTableReferences(
                            db,
                            table,
                            p0,
                          ).productSupplierEntityRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.supplierId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$SupplierEntityTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SupplierEntityTable,
      SupplierEntityData,
      $$SupplierEntityTableFilterComposer,
      $$SupplierEntityTableOrderingComposer,
      $$SupplierEntityTableAnnotationComposer,
      $$SupplierEntityTableCreateCompanionBuilder,
      $$SupplierEntityTableUpdateCompanionBuilder,
      (SupplierEntityData, $$SupplierEntityTableReferences),
      SupplierEntityData,
      PrefetchHooks Function({bool productSupplierEntityRefs})
    >;
typedef $$ProductSupplierEntityTableCreateCompanionBuilder =
    ProductSupplierEntityCompanion Function({
      required int productId,
      required int supplierId,
      Value<int> rowid,
    });
typedef $$ProductSupplierEntityTableUpdateCompanionBuilder =
    ProductSupplierEntityCompanion Function({
      Value<int> productId,
      Value<int> supplierId,
      Value<int> rowid,
    });

final class $$ProductSupplierEntityTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $ProductSupplierEntityTable,
          ProductSupplierEntityData
        > {
  $$ProductSupplierEntityTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $ProductEntityTable _productIdTable(_$AppDatabase db) =>
      db.productEntity.createAlias(
        $_aliasNameGenerator(
          db.productSupplierEntity.productId,
          db.productEntity.id,
        ),
      );

  $$ProductEntityTableProcessedTableManager get productId {
    final $_column = $_itemColumn<int>('product_id')!;

    final manager = $$ProductEntityTableTableManager(
      $_db,
      $_db.productEntity,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_productIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $SupplierEntityTable _supplierIdTable(_$AppDatabase db) =>
      db.supplierEntity.createAlias(
        $_aliasNameGenerator(
          db.productSupplierEntity.supplierId,
          db.supplierEntity.id,
        ),
      );

  $$SupplierEntityTableProcessedTableManager get supplierId {
    final $_column = $_itemColumn<int>('supplier_id')!;

    final manager = $$SupplierEntityTableTableManager(
      $_db,
      $_db.supplierEntity,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_supplierIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ProductSupplierEntityTableFilterComposer
    extends Composer<_$AppDatabase, $ProductSupplierEntityTable> {
  $$ProductSupplierEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$ProductEntityTableFilterComposer get productId {
    final $$ProductEntityTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.productEntity,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductEntityTableFilterComposer(
            $db: $db,
            $table: $db.productEntity,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$SupplierEntityTableFilterComposer get supplierId {
    final $$SupplierEntityTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.supplierId,
      referencedTable: $db.supplierEntity,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SupplierEntityTableFilterComposer(
            $db: $db,
            $table: $db.supplierEntity,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ProductSupplierEntityTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductSupplierEntityTable> {
  $$ProductSupplierEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$ProductEntityTableOrderingComposer get productId {
    final $$ProductEntityTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.productEntity,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductEntityTableOrderingComposer(
            $db: $db,
            $table: $db.productEntity,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$SupplierEntityTableOrderingComposer get supplierId {
    final $$SupplierEntityTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.supplierId,
      referencedTable: $db.supplierEntity,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SupplierEntityTableOrderingComposer(
            $db: $db,
            $table: $db.supplierEntity,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ProductSupplierEntityTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductSupplierEntityTable> {
  $$ProductSupplierEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$ProductEntityTableAnnotationComposer get productId {
    final $$ProductEntityTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.productEntity,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductEntityTableAnnotationComposer(
            $db: $db,
            $table: $db.productEntity,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$SupplierEntityTableAnnotationComposer get supplierId {
    final $$SupplierEntityTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.supplierId,
      referencedTable: $db.supplierEntity,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SupplierEntityTableAnnotationComposer(
            $db: $db,
            $table: $db.supplierEntity,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ProductSupplierEntityTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProductSupplierEntityTable,
          ProductSupplierEntityData,
          $$ProductSupplierEntityTableFilterComposer,
          $$ProductSupplierEntityTableOrderingComposer,
          $$ProductSupplierEntityTableAnnotationComposer,
          $$ProductSupplierEntityTableCreateCompanionBuilder,
          $$ProductSupplierEntityTableUpdateCompanionBuilder,
          (ProductSupplierEntityData, $$ProductSupplierEntityTableReferences),
          ProductSupplierEntityData,
          PrefetchHooks Function({bool productId, bool supplierId})
        > {
  $$ProductSupplierEntityTableTableManager(
    _$AppDatabase db,
    $ProductSupplierEntityTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductSupplierEntityTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$ProductSupplierEntityTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$ProductSupplierEntityTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> productId = const Value.absent(),
                Value<int> supplierId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProductSupplierEntityCompanion(
                productId: productId,
                supplierId: supplierId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int productId,
                required int supplierId,
                Value<int> rowid = const Value.absent(),
              }) => ProductSupplierEntityCompanion.insert(
                productId: productId,
                supplierId: supplierId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ProductSupplierEntityTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({productId = false, supplierId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (productId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.productId,
                                referencedTable:
                                    $$ProductSupplierEntityTableReferences
                                        ._productIdTable(db),
                                referencedColumn:
                                    $$ProductSupplierEntityTableReferences
                                        ._productIdTable(db)
                                        .id,
                              )
                              as T;
                    }
                    if (supplierId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.supplierId,
                                referencedTable:
                                    $$ProductSupplierEntityTableReferences
                                        ._supplierIdTable(db),
                                referencedColumn:
                                    $$ProductSupplierEntityTableReferences
                                        ._supplierIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ProductSupplierEntityTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProductSupplierEntityTable,
      ProductSupplierEntityData,
      $$ProductSupplierEntityTableFilterComposer,
      $$ProductSupplierEntityTableOrderingComposer,
      $$ProductSupplierEntityTableAnnotationComposer,
      $$ProductSupplierEntityTableCreateCompanionBuilder,
      $$ProductSupplierEntityTableUpdateCompanionBuilder,
      (ProductSupplierEntityData, $$ProductSupplierEntityTableReferences),
      ProductSupplierEntityData,
      PrefetchHooks Function({bool productId, bool supplierId})
    >;
typedef $$PurchaseEntityTableCreateCompanionBuilder =
    PurchaseEntityCompanion Function({
      Value<int> id,
      required double totalValue,
      Value<DateTime> date,
      required String userCPF,
    });
typedef $$PurchaseEntityTableUpdateCompanionBuilder =
    PurchaseEntityCompanion Function({
      Value<int> id,
      Value<double> totalValue,
      Value<DateTime> date,
      Value<String> userCPF,
    });

final class $$PurchaseEntityTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $PurchaseEntityTable,
          PurchaseEntityData
        > {
  $$PurchaseEntityTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<
    $PurchaseProductEntityTable,
    List<PurchaseProductEntityData>
  >
  _purchaseProductEntityRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.purchaseProductEntity,
        aliasName: $_aliasNameGenerator(
          db.purchaseEntity.id,
          db.purchaseProductEntity.purchaseId,
        ),
      );

  $$PurchaseProductEntityTableProcessedTableManager
  get purchaseProductEntityRefs {
    final manager = $$PurchaseProductEntityTableTableManager(
      $_db,
      $_db.purchaseProductEntity,
    ).filter((f) => f.purchaseId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _purchaseProductEntityRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$PurchaseEntityTableFilterComposer
    extends Composer<_$AppDatabase, $PurchaseEntityTable> {
  $$PurchaseEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get totalValue => $composableBuilder(
    column: $table.totalValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userCPF => $composableBuilder(
    column: $table.userCPF,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> purchaseProductEntityRefs(
    Expression<bool> Function($$PurchaseProductEntityTableFilterComposer f) f,
  ) {
    final $$PurchaseProductEntityTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.purchaseProductEntity,
          getReferencedColumn: (t) => t.purchaseId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$PurchaseProductEntityTableFilterComposer(
                $db: $db,
                $table: $db.purchaseProductEntity,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$PurchaseEntityTableOrderingComposer
    extends Composer<_$AppDatabase, $PurchaseEntityTable> {
  $$PurchaseEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get totalValue => $composableBuilder(
    column: $table.totalValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userCPF => $composableBuilder(
    column: $table.userCPF,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PurchaseEntityTableAnnotationComposer
    extends Composer<_$AppDatabase, $PurchaseEntityTable> {
  $$PurchaseEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get totalValue => $composableBuilder(
    column: $table.totalValue,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get userCPF =>
      $composableBuilder(column: $table.userCPF, builder: (column) => column);

  Expression<T> purchaseProductEntityRefs<T extends Object>(
    Expression<T> Function($$PurchaseProductEntityTableAnnotationComposer a) f,
  ) {
    final $$PurchaseProductEntityTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.purchaseProductEntity,
          getReferencedColumn: (t) => t.purchaseId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$PurchaseProductEntityTableAnnotationComposer(
                $db: $db,
                $table: $db.purchaseProductEntity,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$PurchaseEntityTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PurchaseEntityTable,
          PurchaseEntityData,
          $$PurchaseEntityTableFilterComposer,
          $$PurchaseEntityTableOrderingComposer,
          $$PurchaseEntityTableAnnotationComposer,
          $$PurchaseEntityTableCreateCompanionBuilder,
          $$PurchaseEntityTableUpdateCompanionBuilder,
          (PurchaseEntityData, $$PurchaseEntityTableReferences),
          PurchaseEntityData,
          PrefetchHooks Function({bool purchaseProductEntityRefs})
        > {
  $$PurchaseEntityTableTableManager(
    _$AppDatabase db,
    $PurchaseEntityTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PurchaseEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PurchaseEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PurchaseEntityTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<double> totalValue = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<String> userCPF = const Value.absent(),
              }) => PurchaseEntityCompanion(
                id: id,
                totalValue: totalValue,
                date: date,
                userCPF: userCPF,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required double totalValue,
                Value<DateTime> date = const Value.absent(),
                required String userCPF,
              }) => PurchaseEntityCompanion.insert(
                id: id,
                totalValue: totalValue,
                date: date,
                userCPF: userCPF,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$PurchaseEntityTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({purchaseProductEntityRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (purchaseProductEntityRefs) db.purchaseProductEntity,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (purchaseProductEntityRefs)
                    await $_getPrefetchedData<
                      PurchaseEntityData,
                      $PurchaseEntityTable,
                      PurchaseProductEntityData
                    >(
                      currentTable: table,
                      referencedTable: $$PurchaseEntityTableReferences
                          ._purchaseProductEntityRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$PurchaseEntityTableReferences(
                            db,
                            table,
                            p0,
                          ).purchaseProductEntityRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.purchaseId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$PurchaseEntityTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PurchaseEntityTable,
      PurchaseEntityData,
      $$PurchaseEntityTableFilterComposer,
      $$PurchaseEntityTableOrderingComposer,
      $$PurchaseEntityTableAnnotationComposer,
      $$PurchaseEntityTableCreateCompanionBuilder,
      $$PurchaseEntityTableUpdateCompanionBuilder,
      (PurchaseEntityData, $$PurchaseEntityTableReferences),
      PurchaseEntityData,
      PrefetchHooks Function({bool purchaseProductEntityRefs})
    >;
typedef $$PurchaseProductEntityTableCreateCompanionBuilder =
    PurchaseProductEntityCompanion Function({
      Value<int> id,
      required int purchaseId,
      required int productId,
      required int quantity,
      required double price,
    });
typedef $$PurchaseProductEntityTableUpdateCompanionBuilder =
    PurchaseProductEntityCompanion Function({
      Value<int> id,
      Value<int> purchaseId,
      Value<int> productId,
      Value<int> quantity,
      Value<double> price,
    });

final class $$PurchaseProductEntityTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $PurchaseProductEntityTable,
          PurchaseProductEntityData
        > {
  $$PurchaseProductEntityTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PurchaseEntityTable _purchaseIdTable(_$AppDatabase db) =>
      db.purchaseEntity.createAlias(
        $_aliasNameGenerator(
          db.purchaseProductEntity.purchaseId,
          db.purchaseEntity.id,
        ),
      );

  $$PurchaseEntityTableProcessedTableManager get purchaseId {
    final $_column = $_itemColumn<int>('purchase_id')!;

    final manager = $$PurchaseEntityTableTableManager(
      $_db,
      $_db.purchaseEntity,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_purchaseIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $ProductEntityTable _productIdTable(_$AppDatabase db) =>
      db.productEntity.createAlias(
        $_aliasNameGenerator(
          db.purchaseProductEntity.productId,
          db.productEntity.id,
        ),
      );

  $$ProductEntityTableProcessedTableManager get productId {
    final $_column = $_itemColumn<int>('product_id')!;

    final manager = $$ProductEntityTableTableManager(
      $_db,
      $_db.productEntity,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_productIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PurchaseProductEntityTableFilterComposer
    extends Composer<_$AppDatabase, $PurchaseProductEntityTable> {
  $$PurchaseProductEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnFilters(column),
  );

  $$PurchaseEntityTableFilterComposer get purchaseId {
    final $$PurchaseEntityTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.purchaseId,
      referencedTable: $db.purchaseEntity,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PurchaseEntityTableFilterComposer(
            $db: $db,
            $table: $db.purchaseEntity,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProductEntityTableFilterComposer get productId {
    final $$ProductEntityTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.productEntity,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductEntityTableFilterComposer(
            $db: $db,
            $table: $db.productEntity,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PurchaseProductEntityTableOrderingComposer
    extends Composer<_$AppDatabase, $PurchaseProductEntityTable> {
  $$PurchaseProductEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnOrderings(column),
  );

  $$PurchaseEntityTableOrderingComposer get purchaseId {
    final $$PurchaseEntityTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.purchaseId,
      referencedTable: $db.purchaseEntity,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PurchaseEntityTableOrderingComposer(
            $db: $db,
            $table: $db.purchaseEntity,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProductEntityTableOrderingComposer get productId {
    final $$ProductEntityTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.productEntity,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductEntityTableOrderingComposer(
            $db: $db,
            $table: $db.productEntity,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PurchaseProductEntityTableAnnotationComposer
    extends Composer<_$AppDatabase, $PurchaseProductEntityTable> {
  $$PurchaseProductEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  $$PurchaseEntityTableAnnotationComposer get purchaseId {
    final $$PurchaseEntityTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.purchaseId,
      referencedTable: $db.purchaseEntity,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PurchaseEntityTableAnnotationComposer(
            $db: $db,
            $table: $db.purchaseEntity,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProductEntityTableAnnotationComposer get productId {
    final $$ProductEntityTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.productEntity,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductEntityTableAnnotationComposer(
            $db: $db,
            $table: $db.productEntity,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PurchaseProductEntityTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PurchaseProductEntityTable,
          PurchaseProductEntityData,
          $$PurchaseProductEntityTableFilterComposer,
          $$PurchaseProductEntityTableOrderingComposer,
          $$PurchaseProductEntityTableAnnotationComposer,
          $$PurchaseProductEntityTableCreateCompanionBuilder,
          $$PurchaseProductEntityTableUpdateCompanionBuilder,
          (PurchaseProductEntityData, $$PurchaseProductEntityTableReferences),
          PurchaseProductEntityData,
          PrefetchHooks Function({bool purchaseId, bool productId})
        > {
  $$PurchaseProductEntityTableTableManager(
    _$AppDatabase db,
    $PurchaseProductEntityTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PurchaseProductEntityTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$PurchaseProductEntityTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$PurchaseProductEntityTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> purchaseId = const Value.absent(),
                Value<int> productId = const Value.absent(),
                Value<int> quantity = const Value.absent(),
                Value<double> price = const Value.absent(),
              }) => PurchaseProductEntityCompanion(
                id: id,
                purchaseId: purchaseId,
                productId: productId,
                quantity: quantity,
                price: price,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int purchaseId,
                required int productId,
                required int quantity,
                required double price,
              }) => PurchaseProductEntityCompanion.insert(
                id: id,
                purchaseId: purchaseId,
                productId: productId,
                quantity: quantity,
                price: price,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$PurchaseProductEntityTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({purchaseId = false, productId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (purchaseId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.purchaseId,
                                referencedTable:
                                    $$PurchaseProductEntityTableReferences
                                        ._purchaseIdTable(db),
                                referencedColumn:
                                    $$PurchaseProductEntityTableReferences
                                        ._purchaseIdTable(db)
                                        .id,
                              )
                              as T;
                    }
                    if (productId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.productId,
                                referencedTable:
                                    $$PurchaseProductEntityTableReferences
                                        ._productIdTable(db),
                                referencedColumn:
                                    $$PurchaseProductEntityTableReferences
                                        ._productIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PurchaseProductEntityTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PurchaseProductEntityTable,
      PurchaseProductEntityData,
      $$PurchaseProductEntityTableFilterComposer,
      $$PurchaseProductEntityTableOrderingComposer,
      $$PurchaseProductEntityTableAnnotationComposer,
      $$PurchaseProductEntityTableCreateCompanionBuilder,
      $$PurchaseProductEntityTableUpdateCompanionBuilder,
      (PurchaseProductEntityData, $$PurchaseProductEntityTableReferences),
      PurchaseProductEntityData,
      PrefetchHooks Function({bool purchaseId, bool productId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ProductEntityTableTableManager get productEntity =>
      $$ProductEntityTableTableManager(_db, _db.productEntity);
  $$SupplierEntityTableTableManager get supplierEntity =>
      $$SupplierEntityTableTableManager(_db, _db.supplierEntity);
  $$ProductSupplierEntityTableTableManager get productSupplierEntity =>
      $$ProductSupplierEntityTableTableManager(_db, _db.productSupplierEntity);
  $$PurchaseEntityTableTableManager get purchaseEntity =>
      $$PurchaseEntityTableTableManager(_db, _db.purchaseEntity);
  $$PurchaseProductEntityTableTableManager get purchaseProductEntity =>
      $$PurchaseProductEntityTableTableManager(_db, _db.purchaseProductEntity);
}
