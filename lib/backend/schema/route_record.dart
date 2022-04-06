import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'route_record.g.dart';

abstract class RouteRecord implements Built<RouteRecord, RouteRecordBuilder> {
  static Serializer<RouteRecord> get serializer => _$routeRecordSerializer;

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

  static void _initializeBuilder(RouteRecordBuilder builder) => builder
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
      FirebaseFirestore.instance.collection('route');

  static Stream<RouteRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<RouteRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  RouteRecord._();
  factory RouteRecord([void Function(RouteRecordBuilder) updates]) =
      _$RouteRecord;

  static RouteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createRouteRecordData({
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
        RouteRecord.serializer,
        RouteRecord((r) => r
          ..address = address
          ..zipcode = zipcode
          ..city = city
          ..starttime = starttime
          ..endtime = endtime
          ..size = size
          ..state = state
          ..additionalNotes = additionalNotes
          ..refg = refg));
