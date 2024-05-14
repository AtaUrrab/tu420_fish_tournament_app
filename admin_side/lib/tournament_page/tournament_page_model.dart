import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/component/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'tournament_page_widget.dart' show TournamentPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TournamentPageModel extends FlutterFlowModel<TournamentPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideBar component.
  late SideBarModel sideBarModel;
  // State field(s) for ownerName widget.
  FocusNode? ownerNameFocusNode;
  TextEditingController? ownerNameTextController;
  String? Function(BuildContext, String?)? ownerNameTextControllerValidator;
  // State field(s) for ownerEmail widget.
  FocusNode? ownerEmailFocusNode;
  TextEditingController? ownerEmailTextController;
  String? Function(BuildContext, String?)? ownerEmailTextControllerValidator;
  // State field(s) for ownerPhone widget.
  FocusNode? ownerPhoneFocusNode;
  TextEditingController? ownerPhoneTextController;
  String? Function(BuildContext, String?)? ownerPhoneTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for tournamentName widget.
  FocusNode? tournamentNameFocusNode;
  TextEditingController? tournamentNameTextController;
  String? Function(BuildContext, String?)?
      tournamentNameTextControllerValidator;
  // State field(s) for water widget.
  FocusNode? waterFocusNode;
  TextEditingController? waterTextController;
  String? Function(BuildContext, String?)? waterTextControllerValidator;
  // State field(s) for zipCode widget.
  FocusNode? zipCodeFocusNode;
  TextEditingController? zipCodeTextController;
  String? Function(BuildContext, String?)? zipCodeTextControllerValidator;
  // State field(s) for country widget.
  FocusNode? countryFocusNode;
  TextEditingController? countryTextController;
  String? Function(BuildContext, String?)? countryTextControllerValidator;
  // State field(s) for stateProvince widget.
  FocusNode? stateProvinceFocusNode;
  TextEditingController? stateProvinceTextController;
  String? Function(BuildContext, String?)? stateProvinceTextControllerValidator;
  // State field(s) for tournamentType widget.
  FocusNode? tournamentTypeFocusNode;
  TextEditingController? tournamentTypeTextController;
  String? Function(BuildContext, String?)?
      tournamentTypeTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for willParticipate widget.
  FormFieldController<String>? willParticipateValueController;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideBarModel.dispose();
    ownerNameFocusNode?.dispose();
    ownerNameTextController?.dispose();

    ownerEmailFocusNode?.dispose();
    ownerEmailTextController?.dispose();

    ownerPhoneFocusNode?.dispose();
    ownerPhoneTextController?.dispose();

    tournamentNameFocusNode?.dispose();
    tournamentNameTextController?.dispose();

    waterFocusNode?.dispose();
    waterTextController?.dispose();

    zipCodeFocusNode?.dispose();
    zipCodeTextController?.dispose();

    countryFocusNode?.dispose();
    countryTextController?.dispose();

    stateProvinceFocusNode?.dispose();
    stateProvinceTextController?.dispose();

    tournamentTypeFocusNode?.dispose();
    tournamentTypeTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }

  /// Additional helper methods.
  String? get willParticipateValue => willParticipateValueController?.value;
}
