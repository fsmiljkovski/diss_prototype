import '../components/classes_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';

import 'package:flutter/material.dart';

class ClassHomeScreenWidget extends StatefulWidget {
  const ClassHomeScreenWidget({Key key}) : super(key: key);

  @override
  _ClassHomeScreenWidgetState createState() => _ClassHomeScreenWidgetState();
}

class _ClassHomeScreenWidgetState extends State<ClassHomeScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Object Oriented Programming',
          style: FlutterFlowTheme.subtitle2.override(
            fontFamily: 'Poppins',
            color: Color(0xFF303030),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFF2C2C2C),
      body: SafeArea(
        child: ClassesWidget(),
      ),
    );
  }
}
