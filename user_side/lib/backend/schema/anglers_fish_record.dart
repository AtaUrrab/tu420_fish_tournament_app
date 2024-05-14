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

  // "fishName" field.
  String? _fishName;
  String get fishName => _fishName ?? '';
  bool hasFishName() => _fishName != null;

  // "fishImage" field.
  String? _fishImage;
  String get fishImage => _fishImage ?? '';
  bool hasFishImage() => _fishImage != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "fishLength" field.
  double? _fishLength;
  double get fishLength => _fishLength ?? 0.0;
  bool hasFishLength() => _fishLength != null;

  // "tournamentName" field.
  String? _tournamentName;
  String get tournamentName => _tournamentName ?? '';
  bool hasTournamentName() => _tournamentName != null;

  // "tournamentID" field.
  String? _tournamentID;
  String get tournamentID => _tournamentID ?? '';
  bool hasTournamentID() => _tournamentID != null;

  // "fishWeight" field.
  int? _fishWeight;
  int get fishWeight => _fishWeight ?? 0;
  bool hasFishWeight() => _fishWeight != null;

  // "whereCaught" field.
  String? _whereCaught;
  String get whereCaught => _whereCaught ?? '';
  bool hasWhereCaught() => _whereCaught != null;

  // "anglerDocID" field.
  String? _anglerDocID;
  String get anglerDocID => _anglerDocID ?? '';
  bool hasAnglerDocID() => _anglerDocID != null;

  // "isAccept" field.
  bool? _isAccept;
  bool get isAccept => _isAccept ?? false;
  bool hasIsAccept() => _isAccept != null;

  void _initializeFields() {
    _fishName = snapshotData['fishName'] as String?;
    _fishImage = snapshotData['fishImage'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _fishLength = castToType<double>(snapshotData['fishLength']);
    _tournamentName = snapshotData['tournamentName'] as String?;
    _tournamentID = snapshotData['tournamentID'] as String?;
    _fishWeight = castToType<int>(snapshotData['fishWeight']);
    _whereCaught = snapshotData['whereCaught'] as String?;
    _anglerDocID = snapshotData['anglerDocID'] as String?;
    _isAccept = snapshotData['isAccept'] as bool?;
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
  String? fishName,
  String? fishImage,
  DateTime? createdAt,
  double? fishLength,
  String? tournamentName,
  String? tournamentID,
  int? fishWeight,
  String? whereCaught,
  String? anglerDocID,
  bool? isAccept,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fishName': fishName,
      'fishImage': fishImage,
      'created_at': createdAt,
      'fishLength': fishLength,
      'tournamentName': tournamentName,
      'tournamentID': tournamentID,
      'fishWeight': fishWeight,
      'whereCaught': whereCaught,
      'anglerDocID': anglerDocID,
      'isAccept': isAccept,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnglersFishRecordDocumentEquality implements Equality<AnglersFishRecord> {
  const AnglersFishRecordDocumentEquality();

  @override
  bool equals(AnglersFishRecord? e1, AnglersFishRecord? e2) {
    return e1?.fishName == e2?.fishName &&
        e1?.fishImage == e2?.fishImage &&
        e1?.createdAt == e2?.createdAt &&
        e1?.fishLength == e2?.fishLength &&
        e1?.tournamentName == e2?.tournamentName &&
        e1?.tournamentID == e2?.tournamentID &&
        e1?.fishWeight == e2?.fishWeight &&
        e1?.whereCaught == e2?.whereCaught &&
        e1?.anglerDocID == e2?.anglerDocID &&
        e1?.isAccept == e2?.isAccept;
  }

  @override
  int hash(AnglersFishRecord? e) => const ListEquality().hash([
        e?.fishName,
        e?.fishImage,
        e?.createdAt,
        e?.fishLength,
        e?.tournamentName,
        e?.tournamentID,
        e?.fishWeight,
        e?.whereCaught,
        e?.anglerDocID,
        e?.isAccept
      ]);

  @override
  bool isValidKey(Object? o) => o is AnglersFishRecord;
}
