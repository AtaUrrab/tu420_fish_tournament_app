import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TournamentsRecord extends FirestoreRecord {
  TournamentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "tournamnetOwnerEmai" field.
  String? _tournamnetOwnerEmai;
  String get tournamnetOwnerEmai => _tournamnetOwnerEmai ?? '';
  bool hasTournamnetOwnerEmai() => _tournamnetOwnerEmai != null;

  // "tournamnetOwnerName" field.
  String? _tournamnetOwnerName;
  String get tournamnetOwnerName => _tournamnetOwnerName ?? '';
  bool hasTournamnetOwnerName() => _tournamnetOwnerName != null;

  // "tournamnetOwnerPhone" field.
  int? _tournamnetOwnerPhone;
  int get tournamnetOwnerPhone => _tournamnetOwnerPhone ?? 0;
  bool hasTournamnetOwnerPhone() => _tournamnetOwnerPhone != null;

  // "bodyWater" field.
  int? _bodyWater;
  int get bodyWater => _bodyWater ?? 0;
  bool hasBodyWater() => _bodyWater != null;

  // "zipCode" field.
  String? _zipCode;
  String get zipCode => _zipCode ?? '';
  bool hasZipCode() => _zipCode != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "stateProvince" field.
  String? _stateProvince;
  String get stateProvince => _stateProvince ?? '';
  bool hasStateProvince() => _stateProvince != null;

  // "willParticipate" field.
  bool? _willParticipate;
  bool get willParticipate => _willParticipate ?? false;
  bool hasWillParticipate() => _willParticipate != null;

  // "tournamentType" field.
  String? _tournamentType;
  String get tournamentType => _tournamentType ?? '';
  bool hasTournamentType() => _tournamentType != null;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _startDate = snapshotData['startDate'] as DateTime?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _tournamnetOwnerEmai = snapshotData['tournamnetOwnerEmai'] as String?;
    _tournamnetOwnerName = snapshotData['tournamnetOwnerName'] as String?;
    _tournamnetOwnerPhone =
        castToType<int>(snapshotData['tournamnetOwnerPhone']);
    _bodyWater = castToType<int>(snapshotData['bodyWater']);
    _zipCode = snapshotData['zipCode'] as String?;
    _country = snapshotData['country'] as String?;
    _stateProvince = snapshotData['stateProvince'] as String?;
    _willParticipate = snapshotData['willParticipate'] as bool?;
    _tournamentType = snapshotData['tournamentType'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tournaments');

  static Stream<TournamentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TournamentsRecord.fromSnapshot(s));

  static Future<TournamentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TournamentsRecord.fromSnapshot(s));

  static TournamentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TournamentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TournamentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TournamentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TournamentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TournamentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTournamentsRecordData({
  String? description,
  String? name,
  String? image,
  DateTime? startDate,
  DateTime? endDate,
  String? tournamnetOwnerEmai,
  String? tournamnetOwnerName,
  int? tournamnetOwnerPhone,
  int? bodyWater,
  String? zipCode,
  String? country,
  String? stateProvince,
  bool? willParticipate,
  String? tournamentType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'name': name,
      'image': image,
      'startDate': startDate,
      'endDate': endDate,
      'tournamnetOwnerEmai': tournamnetOwnerEmai,
      'tournamnetOwnerName': tournamnetOwnerName,
      'tournamnetOwnerPhone': tournamnetOwnerPhone,
      'bodyWater': bodyWater,
      'zipCode': zipCode,
      'country': country,
      'stateProvince': stateProvince,
      'willParticipate': willParticipate,
      'tournamentType': tournamentType,
    }.withoutNulls,
  );

  return firestoreData;
}

class TournamentsRecordDocumentEquality implements Equality<TournamentsRecord> {
  const TournamentsRecordDocumentEquality();

  @override
  bool equals(TournamentsRecord? e1, TournamentsRecord? e2) {
    return e1?.description == e2?.description &&
        e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.tournamnetOwnerEmai == e2?.tournamnetOwnerEmai &&
        e1?.tournamnetOwnerName == e2?.tournamnetOwnerName &&
        e1?.tournamnetOwnerPhone == e2?.tournamnetOwnerPhone &&
        e1?.bodyWater == e2?.bodyWater &&
        e1?.zipCode == e2?.zipCode &&
        e1?.country == e2?.country &&
        e1?.stateProvince == e2?.stateProvince &&
        e1?.willParticipate == e2?.willParticipate &&
        e1?.tournamentType == e2?.tournamentType;
  }

  @override
  int hash(TournamentsRecord? e) => const ListEquality().hash([
        e?.description,
        e?.name,
        e?.image,
        e?.startDate,
        e?.endDate,
        e?.tournamnetOwnerEmai,
        e?.tournamnetOwnerName,
        e?.tournamnetOwnerPhone,
        e?.bodyWater,
        e?.zipCode,
        e?.country,
        e?.stateProvince,
        e?.willParticipate,
        e?.tournamentType
      ]);

  @override
  bool isValidKey(Object? o) => o is TournamentsRecord;
}
