import '../components/ask_question_widget.dart';
import '../components/questions_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class QuestionsPageWidget extends StatefulWidget {
  const QuestionsPageWidget({Key key}) : super(key: key);

  @override
  _QuestionsPageWidgetState createState() => _QuestionsPageWidgetState();
}

class _QuestionsPageWidgetState extends State<QuestionsPageWidget> {
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
          style: FlutterFlowTheme.subtitle1.override(
                fontFamily: 'Poppins',
                color: Color(0xFF303030),
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFF2C2C2C),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) {
              return Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: AskQuestionWidget(),
              );
            },
          );
        },
        backgroundColor: FlutterFlowTheme.primaryColor,
        icon: Icon(
          Icons.add,
        ),
        elevation: 8,
        label: Text(
          'Ask',
          style: FlutterFlowTheme.bodyText1,
        ),
      ),
      body: SafeArea(
        child: QuestionsWidget(),
      ),
    );
  }
}
