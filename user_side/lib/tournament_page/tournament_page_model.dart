import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'tournament_page_widget.dart' show TournamentPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TournamentPageModel extends FlutterFlowModel<TournamentPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for fish_name widget.
  String? fishNameValue;
  FormFieldController<String>? fishNameValueController;
  // State field(s) for weight widget.
  FocusNode? weightFocusNode;
  TextEditingController? weightTextController;
  String? Function(BuildContext, String?)? weightTextControllerValidator;
  // State field(s) for lnegth widget.
  FocusNode? lnegthFocusNode;
  TextEditingController? lnegthTextController;
  String? Function(BuildContext, String?)? lnegthTextControllerValidator;
  // State field(s) for where_caught widget.
  FocusNode? whereCaughtFocusNode;
  TextEditingController? whereCaughtTextController;
  String? Function(BuildContext, String?)? whereCaughtTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    weightFocusNode?.dispose();
    weightTextController?.dispose();

    lnegthFocusNode?.dispose();
    lnegthTextController?.dispose();

    whereCaughtFocusNode?.dispose();
    whereCaughtTextController?.dispose();
  }
}
