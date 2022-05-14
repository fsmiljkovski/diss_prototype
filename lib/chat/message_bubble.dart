import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../flutter_flow/flutter_flow_theme.dart';

class MessageBubble extends StatelessWidget {
  MessageBubble(this.message, this.isMe);
  final String message;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: isMe ? FlutterFlowTheme.primaryColor : Colors.grey[700],
            borderRadius: BorderRadius.circular(12),
          ),
          constraints: BoxConstraints(maxWidth: 210),
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 16,
          ),
          margin: EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 8,
          ),
          child: Text(message, style: FlutterFlowTheme.bodyText1),
        ),
      ],
    );
  }
}
