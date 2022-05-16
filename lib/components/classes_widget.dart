import 'package:flutter/material.dart';

class ClassesWidget extends StatefulWidget {
  const ClassesWidget({Key key}) : super(key: key);

  @override
  _ClassesWidgetState createState() => _ClassesWidgetState();
}

class _ClassesWidgetState extends State<ClassesWidget> {
  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   children: snapshot.data.docs.map((document) {
    //     return Padding(
    //       padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
    //       child: Container(
    //         width: MediaQuery.of(context).size.width,
    //         decoration: BoxDecoration(
    //           color: Colors.white,
    //           boxShadow: [
    //             BoxShadow(
    //               blurRadius: 3,
    //               color: Color(0x25000000),
    //               offset: Offset(0, 2),
    //             )
    //           ],
    //           borderRadius: BorderRadius.circular(8),
    //         ),
    //         child: InkWell(
    //           onTap: () async {
    //             await showModalBottomSheet(
    //               isScrollControlled: true,
    //               backgroundColor: Colors.transparent,
    //               context: context,
    //               builder: (context) {
    //                 return Padding(
    //                   padding: MediaQuery.of(context).viewInsets,
    //                   child: EnterLectureWidget(),
    //                 );
    //               },
    //             );
    //           },
    //           child: Row(
    //             mainAxisSize: MainAxisSize.max,
    //             children: [
    //               Padding(
    //                 padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
    //                 child: Container(
    //                   width: 4,
    //                   height: 90,
    //                   decoration: BoxDecoration(
    //                     color: FlutterFlowTheme.primaryColor,
    //                     borderRadius: BorderRadius.circular(4),
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: EdgeInsetsDirectional.fromSTEB(12, 12, 16, 12),
    //                 child: Column(
    //                   mainAxisSize: MainAxisSize.max,
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     Text(
    //                       document['ClassroomTitle'],
    //                       style: FlutterFlowTheme.title2.override(
    //                         fontFamily: 'Lexend Deca',
    //                         color: Color(0xFF090F13),
    //                         fontSize: 20,
    //                         fontWeight: FontWeight.w500,
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     );
    //   }).toList(),
    // );
  }
}
