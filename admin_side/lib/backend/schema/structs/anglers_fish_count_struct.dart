// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnglersFishCountStruct extends FFFirebaseStruct {
  AnglersFishCountStruct({
    String? anglerDoc,
    String? tournamentDoc,
    String? fishLength,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _anglerDoc = anglerDoc,
        _tournamentDoc = tournamentDoc,
        _fishLength = fishLength,
        super(firestoreUtilData);

  // "anglerDoc" field.
  String? _anglerDoc;
  String get anglerDoc => _anglerDoc ?? '';
  set anglerDoc(String? val) => _anglerDoc = val;
  bool hasAnglerDoc() => _anglerDoc != null;

  // "tournamentDoc" field.
  String? _tournamentDoc;
  String get tournamentDoc => _tournamentDoc ?? '';
  set tournamentDoc(String? val) => _tournamentDoc = val;
  bool hasTournamentDoc() => _tournamentDoc != null;

  // "fishLength" field.
  String? _fishLength;
  String get fishLength => _fishLength ?? '';
  set fishLength(String? val) => _fishLength = val;
  bool hasFishLength() => _fishLength != null;

  static AnglersFishCountStruct fromMap(Map<String, dynamic> data) =>
      AnglersFishCountStruct(
        anglerDoc: data['anglerDoc'] as String?,
        tournamentDoc: data['tournamentDoc'] as String?,
        fishLength: data['fishLength'] as String?,
      );

  static AnglersFishCountStruct? maybeFromMap(dynamic data) => data is Map
      ? AnglersFishCountStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'anglerDoc': _anglerDoc,
        'tournamentDoc': _tournamentDoc,
        'fishLength': _fishLength,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'anglerDoc': serializeParam(
          _anglerDoc,
          ParamType.String,
        ),
        'tournamentDoc': serializeParam(
          _tournamentDoc,
          ParamType.String,
        ),
        'fishLength': serializeParam(
          _fishLength,
          ParamType.String,
        ),
      }.withoutNulls;

  static AnglersFishCountStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AnglersFishCountStruct(
        anglerDoc: deserializeParam(
          data['anglerDoc'],
          ParamType.String,
          false,
        ),
        tournamentDoc: deserializeParam(
          data['tournamentDoc'],
          ParamType.String,
          false,
        ),
        fishLength: deserializeParam(
          data['fishLength'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AnglersFishCountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AnglersFishCountStruct &&
        anglerDoc == other.anglerDoc &&
        tournamentDoc == other.tournamentDoc &&
        fishLength == other.fishLength;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([anglerDoc, tournamentDoc, fishLength]);
}

AnglersFishCountStruct createAnglersFishCountStruct({
  String? anglerDoc,
  String? tournamentDoc,
  String? fishLength,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AnglersFishCountStruct(
      anglerDoc: anglerDoc,
      tournamentDoc: tournamentDoc,
      fishLength: fishLength,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AnglersFishCountStruct? updateAnglersFishCountStruct(
  AnglersFishCountStruct? anglersFishCount, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    anglersFishCount
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAnglersFishCountStructData(
  Map<String, dynamic> firestoreData,
  AnglersFishCountStruct? anglersFishCount,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (anglersFishCount == null) {
    return;
  }
  if (anglersFishCount.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && anglersFishCount.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final anglersFishCountData =
      getAnglersFishCountFirestoreData(anglersFishCount, forFieldValue);
  final nestedData =
      anglersFishCountData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = anglersFishCount.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAnglersFishCountFirestoreData(
  AnglersFishCountStruct? anglersFishCount, [
  bool forFieldValue = false,
]) {
  if (anglersFishCount == null) {
    return {};
  }
  final firestoreData = mapToFirestore(anglersFishCount.toMap());

  // Add any Firestore field values
  anglersFishCount.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAnglersFishCountListFirestoreData(
  List<AnglersFishCountStruct>? anglersFishCounts,
) =>
    anglersFishCounts
        ?.map((e) => getAnglersFishCountFirestoreData(e, true))
        .toList() ??
    [];
