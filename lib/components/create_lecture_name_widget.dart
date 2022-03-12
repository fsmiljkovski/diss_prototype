import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class CreateLectureNameWidget extends StatefulWidget {
  const CreateLectureNameWidget({Key key}) : super(key: key);

  @override
  _CreateLectureNameWidgetState createState() =>
      _CreateLectureNameWidgetState();
}

class _CreateLectureNameWidgetState extends State<CreateLectureNameWidget> {
  TextEditingController emailAddressController;

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailAddressController,
      obscureText: false,
      decoration: InputDecoration(
        labelText: 'Classroom Name (Auto Generated)',
        labelStyle: FlutterFlowTheme.bodyText1.override(
              fontFamily: 'Lexend Deca',
              color: Color(0xFF57636C),
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
        hintText: 'Auto generated in increments',
        hintStyle: FlutterFlowTheme.bodyText1.override(
              fontFamily: 'Lexend Deca',
              color: Color(0xFF57636C),
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFDBE2E7),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFDBE2E7),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
      ),
      style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Lexend Deca',
            color: Color(0xFF1D2429),
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
    );
  }
}