import '../components/comment_answer_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class IndependentQuestionsWidget extends StatefulWidget {
  const IndependentQuestionsWidget({Key key}) : super(key: key);

  @override
  _IndependentQuestionsWidgetState createState() =>
      _IndependentQuestionsWidgetState();
}

class _IndependentQuestionsWidgetState
    extends State<IndependentQuestionsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: AutoSizeText(
          'Why is Java hard',
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
      body: SafeArea(
        
        child: CommentAnswerWidget(),
      ),
    );
  }
}
