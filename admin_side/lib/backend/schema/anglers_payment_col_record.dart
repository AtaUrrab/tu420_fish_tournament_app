import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnglersPaymentColRecord extends FirestoreRecord {
  AnglersPaymentColRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "anglerName" field.
  String? _anglerName;
  String get anglerName => _anglerName ?? '';
  bool hasAnglerName() => _anglerName != null;

  // "paid" field.
  bool? _paid;
  bool get paid => _paid ?? false;
  bool hasPaid() => _paid != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "anglerDocID" field.
  String? _anglerDocID;
  String get anglerDocID => _anglerDocID ?? '';
  bool hasAnglerDocID() => _anglerDocID != null;

  // "anglerCustomID" field.
  int? _anglerCustomID;
  int get anglerCustomID => _anglerCustomID ?? 0;
  bool hasAnglerCustomID() => _anglerCustomID != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "isSingle" field.
  bool? _isSingle;
  bool get isSingle => _isSingle ?? false;
  bool hasIsSingle() => _isSingle != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "tournamentID" field.
  String? _tournamentID;
  String get tournamentID => _tournamentID ?? '';
  bool hasTournamentID() => _tournamentID != null;

  void _initializeFields() {
    _anglerName = snapshotData['anglerName'] as String?;
    _paid = snapshotData['paid'] as bool?;
    _active = snapshotData['active'] as bool?;
    _anglerDocID = snapshotData['anglerDocID'] as String?;
    _anglerCustomID = castToType<int>(snapshotData['anglerCustomID']);
    _city = snapshotData['city'] as String?;
    _email = snapshotData['email'] as String?;
    _isSingle = snapshotData['isSingle'] as bool?;
    _phone = snapshotData['phone'] as String?;
    _state = snapshotData['state'] as String?;
    _tournamentID = snapshotData['tournamentID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('anglersPaymentCol');

  static Stream<AnglersPaymentColRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnglersPaymentColRecord.fromSnapshot(s));

  static Future<AnglersPaymentColRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AnglersPaymentColRecord.fromSnapshot(s));

  static AnglersPaymentColRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnglersPaymentColRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnglersPaymentColRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnglersPaymentColRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnglersPaymentColRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnglersPaymentColRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnglersPaymentColRecordData({
  String? anglerName,
  bool? paid,
  bool? active,
  String? anglerDocID,
  int? anglerCustomID,
  String? city,
  String? email,
  bool? isSingle,
  String? phone,
  String? state,
  String? tournamentID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'anglerName': anglerName,
      'paid': paid,
      'active': active,
      'anglerDocID': anglerDocID,
      'anglerCustomID': anglerCustomID,
      'city': city,
      'email': email,
      'isSingle': isSingle,
      'phone': phone,
      'state': state,
      'tournamentID': tournamentID,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnglersPaymentColRecordDocumentEquality
    implements Equality<AnglersPaymentColRecord> {
  const AnglersPaymentColRecordDocumentEquality();

  @override
  bool equals(AnglersPaymentColRecord? e1, AnglersPaymentColRecord? e2) {
    return e1?.anglerName == e2?.anglerName &&
        e1?.paid == e2?.paid &&
        e1?.active == e2?.active &&
        e1?.anglerDocID == e2?.anglerDocID &&
        e1?.anglerCustomID == e2?.anglerCustomID &&
        e1?.city == e2?.city &&
        e1?.email == e2?.email &&
        e1?.isSingle == e2?.isSingle &&
        e1?.phone == e2?.phone &&
        e1?.state == e2?.state &&
        e1?.tournamentID == e2?.tournamentID;
  }

  @override
  int hash(AnglersPaymentColRecord? e) => const ListEquality().hash([
        e?.anglerName,
        e?.paid,
        e?.active,
        e?.anglerDocID,
        e?.anglerCustomID,
        e?.city,
        e?.email,
        e?.isSingle,
        e?.phone,
        e?.state,
        e?.tournamentID
      ]);

  @override
  bool isValidKey(Object? o) => o is AnglersPaymentColRecord;
}
