import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'donations_record.g.dart';

abstract class DonationsRecord
    implements Built<DonationsRecord, DonationsRecordBuilder> {
  static Serializer<DonationsRecord> get serializer =>
      _$donationsRecordSerializer;

  @nullable
  String get address;

  @nullable
  String get zipcode;

  @nullable
  String get city;

  @nullable
  String get starttime;

  @nullable
  String get endtime;

  @nullable
  String get size;

  @nullable
  String get state;

  @nullable
  @BuiltValueField(wireName: 'additional_notes')
  String get additionalNotes;

  @nullable
  bool get refg;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DonationsRecordBuilder builder) => builder
    ..address = ''
    ..zipcode = ''
    ..city = ''
    ..starttime = ''
    ..endtime = ''
    ..size = ''
    ..state = ''
    ..additionalNotes = ''
    ..refg = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('donations');

  static Stream<DonationsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DonationsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DonationsRecord._();
  factory DonationsRecord([void Function(DonationsRecordBuilder) updates]) =
      _$DonationsRecord;

  static DonationsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDonationsRecordData({
  String address,
  String zipcode,
  String city,
  String starttime,
  String endtime,
  String size,
  String state,
  String additionalNotes,
  bool refg,
}) =>
    serializers.toFirestore(
        DonationsRecord.serializer,
        DonationsRecord((d) => d
          ..address = address
          ..zipcode = zipcode
          ..city = city
          ..starttime = starttime
          ..endtime = endtime
          ..size = size
          ..state = state
          ..additionalNotes = additionalNotes
          ..refg = refg));
