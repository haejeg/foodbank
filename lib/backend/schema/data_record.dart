import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'data_record.g.dart';

abstract class DataRecord implements Built<DataRecord, DataRecordBuilder> {
  static Serializer<DataRecord> get serializer => _$dataRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'time_initial')
  DateTime get timeInitial;

  @nullable
  @BuiltValueField(wireName: 'time_final')
  DateTime get timeFinal;

  @nullable
  @BuiltValueField(wireName: 'item_name')
  String get itemName;

  @nullable
  int get size;

  @nullable
  String get address;

  @nullable
  String get zipcode;

  @nullable
  int get state;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DataRecordBuilder builder) => builder
    ..itemName = ''
    ..size = 0
    ..address = ''
    ..zipcode = ''
    ..state = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('data');

  static Stream<DataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DataRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DataRecord._();
  factory DataRecord([void Function(DataRecordBuilder) updates]) = _$DataRecord;

  static DataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDataRecordData({
  DateTime timeInitial,
  DateTime timeFinal,
  String itemName,
  int size,
  String address,
  String zipcode,
  int state,
}) =>
    serializers.toFirestore(
        DataRecord.serializer,
        DataRecord((d) => d
          ..timeInitial = timeInitial
          ..timeFinal = timeFinal
          ..itemName = itemName
          ..size = size
          ..address = address
          ..zipcode = zipcode
          ..state = state));
