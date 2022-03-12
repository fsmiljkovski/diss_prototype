import '../components/classes_widget.dart';
import '../components/create_new_lecture_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClassesWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
