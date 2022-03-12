import '../class_home_screen_lecturer/class_home_screen_lecturer_widget.dart';
import '../components/classrooms_lecturer_widget.dart';
import '../components/create_class_widget.dart';
import '../components/menu_lecturer_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class HomePageLecturerWidget extends StatefulWidget {
  const HomePageLecturerWidget({Key key}) : super(key: key);

  @override
  _HomePageLecturerWidgetState createState() => _HomePageLecturerWidgetState();
}

class _HomePageLecturerWidgetState extends State<HomePageLecturerWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            scaffoldKey.currentState.openDrawer();
          },
          child: Icon(
            Icons.menu,
            color: Colors.black,
            size: 24,
          ),
        ),
        title: Text(
          'Classrooms',
          style: FlutterFlowTheme.title1,
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
                    child: CreateClassWidget(),
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
      drawer: Drawer(
        elevation: 16,
        child: MenuLecturerWidget(),
      ),
      body: SafeArea(
        child: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ClassHomeScreenLecturerWidget(),
              ),
            );
          },
          child: ClassroomsLecturerWidget(),
        ),
      ),
    );
  }
}
