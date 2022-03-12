import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class ClassNameWidget extends StatefulWidget {
  const ClassNameWidget({Key key}) : super(key: key);

  @override
  _ClassNameWidgetState createState() => _ClassNameWidgetState();
}

class _ClassNameWidgetState extends State<ClassNameWidget> {
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
        labelText: 'Class Title',
        labelStyle: FlutterFlowTheme.bodyText1.override(
              fontFamily: 'Lexend Deca',
              color: Color(0xFF57636C),
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
        hintText: 'Name of lecture',
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
