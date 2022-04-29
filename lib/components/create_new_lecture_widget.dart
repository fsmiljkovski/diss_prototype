import 'package:diss_prototype/auth/auth_util.dart';

import '../components/create_lecture_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class CreateNewLectureWidget extends StatefulWidget {
  const CreateNewLectureWidget({Key key}) : super(key: key);

  @override
  _CreateNewLectureWidgetState createState() => _CreateNewLectureWidgetState();
}

class _CreateNewLectureWidgetState extends State<CreateNewLectureWidget> {
  TextEditingController classroomtitlecontroller = TextEditingController();

  String generateRandomNumber() {
    String code = Random().nextInt(999999).toString().padLeft(6, '0');
    return code;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 320,
      decoration: BoxDecoration(
        color: Color(0xFF14181B),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Color(0x3B1D2429),
            offset: Offset(0, -3),
          )
        ],
        borderRadius: BorderRadius.circular(16),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Create Lecture',
              style: FlutterFlowTheme.title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
            TextFormField(
              obscureText: false,
              controller: classroomtitlecontroller,
              decoration: InputDecoration(
                labelText: 'Classroom Title',
                labelStyle: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF57636C),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                hintText: 'Title of Lecture',
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
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  FirebaseFirestore.instance.collection('Lectures').add({
                    'ClassroomTitle': classroomtitlecontroller.text,
                    'SecretKey': generateRandomNumber(),
                    'Professor': currentUserDisplayName
                  });
                },
                text: 'Create',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60,
                  color: FlutterFlowTheme.primaryColor,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Lexend Deca',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 40,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                },
                text: 'Cancel',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60,
                  color: Colors.white,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF57636C),
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
