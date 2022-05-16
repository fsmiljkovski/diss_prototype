import 'package:diss_prototype/flutter_flow/flutter_flow_theme.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({Key key}) : super(key: key);

  @override
  State<NewMessage> createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  final _messageController = new TextEditingController();
  FocusNode myFocusNode = new FocusNode();
  var _enteredMessage = '';

  void _sendMessage() async {
    FocusScope.of(context).unfocus();
    final user = await FirebaseAuth.instance.currentUser;
    FirebaseFirestore.instance.collection('chats').add({
      'text': _enteredMessage,
      'sentAt': Timestamp.now(),
      'uid': user.uid,
    });
    _messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              focusNode: myFocusNode,
              style: TextStyle(color: FlutterFlowTheme.secondaryColor),
              controller: _messageController,
              decoration: InputDecoration(
                  labelText: 'Send a message...',
                  labelStyle: TextStyle(
                    color: myFocusNode.hasFocus ? Colors.blue : Colors.white,
                  )),
              onChanged: (value) {
                setState(() {
                  _enteredMessage = value;
                });
              },
            ),
          ),
          IconButton(
            disabledColor: FlutterFlowTheme.secondaryColor,
            color: FlutterFlowTheme.primaryColor,
            icon: Icon(
              Icons.send,
            ),
            onPressed: _enteredMessage.trim().isEmpty ? null : _sendMessage,
          ),
        ],
      ),
    );
  }
}
