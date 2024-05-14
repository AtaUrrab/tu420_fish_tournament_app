import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/component/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dashboard_page_widget.dart' show DashboardPageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardPageModel extends FlutterFlowModel<DashboardPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideBar component.
  late SideBarModel sideBarModel;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideBarModel.dispose();
  }
}
