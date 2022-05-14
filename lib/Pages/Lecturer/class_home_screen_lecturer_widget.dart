import 'package:cloud_firestore/cloud_firestore.dart';

import '../../components/create_new_lecture_widget.dart';
import '../../components/enter_lecture_widget.dart';
import '../../flutter_flow/flutter_flow_icon_button.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ClassHomeScreenLecturerWidget extends StatefulWidget {
  const ClassHomeScreenLecturerWidget({Key key}) : super(key: key);

  @override
  _ClassHomeScreenLecturerWidgetState createState() =>
      _ClassHomeScreenLecturerWidgetState();
}

class _ClassHomeScreenLecturerWidgetState
    extends State<ClassHomeScreenLecturerWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.primaryColor,
          automaticallyImplyLeading: true,
          title: AutoSizeText(
            'Object Oriented Programming',
            style: FlutterFlowTheme.subtitle2.override(
              fontFamily: 'Poppins',
              color: Color(0xFF303030),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.add,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.of(context).viewInsets,
                      child: CreateNewLectureWidget(),
                    );
                  },
                );
              },
            ),
          ],
          centerTitle: true,
          elevation: 4,
        ),
        backgroundColor: Color(0xFF2C2C2C),
        body: StreamBuilder(
            stream:
                FirebaseFirestore.instance.collection('Lectures').snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView(
                children: snapshot.data.docs.map((document) {
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 3,
                                      color: Color(0x25000000),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(-0.9, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            context: context,
                                            builder: (context) {
                                              return Padding(
                                                padding: MediaQuery.of(context)
                                                    .viewInsets,
                                                child: EnterLectureWidget(),
                                              );
                                            },
                                          );
                                        },
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(9, 4, 4, 4),
                                                child: Container(
                                                  width: 4,
                                                  height: 90,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme
                                                        .primaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 12, 16, 12),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      document[
                                                          'ClassroomTitle'],
                                                      style: FlutterFlowTheme
                                                          .title2
                                                          .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            Color(0xFF090F13),
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }).toList(),
              );
            }));
  }
}
