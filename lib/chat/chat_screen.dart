import '../chat/new_message.dart';
import '../chat/messages.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ChatScreenWidget extends StatefulWidget {
  const ChatScreenWidget({Key key}) : super(key: key);

  @override
  _ChatScreenWidgetState createState() => _ChatScreenWidgetState();
}

class _ChatScreenWidgetState extends State<ChatScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: AutoSizeText(
          'Chat',
          style: FlutterFlowTheme.subtitle1.override(
            fontFamily: 'Poppins',
            color: Color(0xFF303030),
          ),
        ),
        actions: [],
      ),
      backgroundColor: Color(0xFF2C2C2C),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Messages(),
            ),
            NewMessage(),
          ],
        ),
      ),
    );
  }
}
