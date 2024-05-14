import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TournamentLeaderboardRecord extends FirestoreRecord {
  TournamentLeaderboardRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "anglerDoc" field.
  String? _anglerDoc;
  String get anglerDoc => _anglerDoc ?? '';
  bool hasAnglerDoc() => _anglerDoc != null;

  // "tournamentDoc" field.
  String? _tournamentDoc;
  String get tournamentDoc => _tournamentDoc ?? '';
  bool hasTournamentDoc() => _tournamentDoc != null;

  // "fishLength" field.
  double? _fishLength;
  double get fishLength => _fishLength ?? 0.0;
  bool hasFishLength() => _fishLength != null;

  void _initializeFields() {
    _anglerDoc = snapshotData['anglerDoc'] as String?;
    _tournamentDoc = snapshotData['tournamentDoc'] as String?;
    _fishLength = castToType<double>(snapshotData['fishLength']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tournamentLeaderboard');

  static Stream<TournamentLeaderboardRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => TournamentLeaderboardRecord.fromSnapshot(s));

  static Future<TournamentLeaderboardRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TournamentLeaderboardRecord.fromSnapshot(s));

  static TournamentLeaderboardRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TournamentLeaderboardRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TournamentLeaderboardRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TournamentLeaderboardRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TournamentLeaderboardRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TournamentLeaderboardRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTournamentLeaderboardRecordData({
  String? anglerDoc,
  String? tournamentDoc,
  double? fishLength,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'anglerDoc': anglerDoc,
      'tournamentDoc': tournamentDoc,
      'fishLength': fishLength,
    }.withoutNulls,
  );

  return firestoreData;
}

class TournamentLeaderboardRecordDocumentEquality
    implements Equality<TournamentLeaderboardRecord> {
  const TournamentLeaderboardRecordDocumentEquality();

  @override
  bool equals(
      TournamentLeaderboardRecord? e1, TournamentLeaderboardRecord? e2) {
    return e1?.anglerDoc == e2?.anglerDoc &&
        e1?.tournamentDoc == e2?.tournamentDoc &&
        e1?.fishLength == e2?.fishLength;
  }

  @override
  int hash(TournamentLeaderboardRecord? e) => const ListEquality()
      .hash([e?.anglerDoc, e?.tournamentDoc, e?.fishLength]);

  @override
  bool isValidKey(Object? o) => o is TournamentLeaderboardRecord;
}
