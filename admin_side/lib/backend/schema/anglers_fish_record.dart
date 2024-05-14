import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnglersFishRecord extends FirestoreRecord {
  AnglersFishRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "anglerDocID" field.
  String? _anglerDocID;
  String get anglerDocID => _anglerDocID ?? '';
  bool hasAnglerDocID() => _anglerDocID != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "fishImage" field.
  String? _fishImage;
  String get fishImage => _fishImage ?? '';
  bool hasFishImage() => _fishImage != null;

  // "fishLength" field.
  double? _fishLength;
  double get fishLength => _fishLength ?? 0.0;
  bool hasFishLength() => _fishLength != null;

  // "fishName" field.
  String? _fishName;
  String get fishName => _fishName ?? '';
  bool hasFishName() => _fishName != null;

  // "isAccept" field.
  bool? _isAccept;
  bool get isAccept => _isAccept ?? false;
  bool hasIsAccept() => _isAccept != null;

  // "tournamentID" field.
  String? _tournamentID;
  String get tournamentID => _tournamentID ?? '';
  bool hasTournamentID() => _tournamentID != null;

  // "tournamentName" field.
  String? _tournamentName;
  String get tournamentName => _tournamentName ?? '';
  bool hasTournamentName() => _tournamentName != null;

  // "whereCaught" field.
  String? _whereCaught;
  String get whereCaught => _whereCaught ?? '';
  bool hasWhereCaught() => _whereCaught != null;

  // "fishWeight" field.
  int? _fishWeight;
  int get fishWeight => _fishWeight ?? 0;
  bool hasFishWeight() => _fishWeight != null;

  void _initializeFields() {
    _anglerDocID = snapshotData['anglerDocID'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _fishImage = snapshotData['fishImage'] as String?;
    _fishLength = castToType<double>(snapshotData['fishLength']);
    _fishName = snapshotData['fishName'] as String?;
    _isAccept = snapshotData['isAccept'] as bool?;
    _tournamentID = snapshotData['tournamentID'] as String?;
    _tournamentName = snapshotData['tournamentName'] as String?;
    _whereCaught = snapshotData['whereCaught'] as String?;
    _fishWeight = castToType<int>(snapshotData['fishWeight']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('anglersFish');

  static Stream<AnglersFishRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnglersFishRecord.fromSnapshot(s));

  static Future<AnglersFishRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnglersFishRecord.fromSnapshot(s));

  static AnglersFishRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnglersFishRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnglersFishRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnglersFishRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnglersFishRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnglersFishRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnglersFishRecordData({
  String? anglerDocID,
  DateTime? createdAt,
  String? fishImage,
  double? fishLength,
  String? fishName,
  bool? isAccept,
  String? tournamentID,
  String? tournamentName,
  String? whereCaught,
  int? fishWeight,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'anglerDocID': anglerDocID,
      'created_at': createdAt,
      'fishImage': fishImage,
      'fishLength': fishLength,
      'fishName': fishName,
      'isAccept': isAccept,
      'tournamentID': tournamentID,
      'tournamentName': tournamentName,
      'whereCaught': whereCaught,
      'fishWeight': fishWeight,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnglersFishRecordDocumentEquality implements Equality<AnglersFishRecord> {
  const AnglersFishRecordDocumentEquality();

  @override
  bool equals(AnglersFishRecord? e1, AnglersFishRecord? e2) {
    return e1?.anglerDocID == e2?.anglerDocID &&
        e1?.createdAt == e2?.createdAt &&
        e1?.fishImage == e2?.fishImage &&
        e1?.fishLength == e2?.fishLength &&
        e1?.fishName == e2?.fishName &&
        e1?.isAccept == e2?.isAccept &&
        e1?.tournamentID == e2?.tournamentID &&
        e1?.tournamentName == e2?.tournamentName &&
        e1?.whereCaught == e2?.whereCaught &&
        e1?.fishWeight == e2?.fishWeight;
  }

  @override
  int hash(AnglersFishRecord? e) => const ListEquality().hash([
        e?.anglerDocID,
        e?.createdAt,
        e?.fishImage,
        e?.fishLength,
        e?.fishName,
        e?.isAccept,
        e?.tournamentID,
        e?.tournamentName,
        e?.whereCaught,
        e?.fishWeight
      ]);

  @override
  bool isValidKey(Object? o) => o is AnglersFishRecord;
}
