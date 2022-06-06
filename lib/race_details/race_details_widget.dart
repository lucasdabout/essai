import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class RaceDetailsWidget extends StatefulWidget {
  const RaceDetailsWidget({
    Key key,
    this.racedetails,
  }) : super(key: key);

  final DocumentReference racedetails;

  @override
  _RaceDetailsWidgetState createState() => _RaceDetailsWidgetState();
}

class _RaceDetailsWidgetState extends State<RaceDetailsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Race2Record>(
      stream: Race2Record.getDocument(widget.racedetails),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 40,
              height: 40,
              child: SpinKitCircle(
                color: Color(0xFFFF395C),
                size: 40,
              ),
            ),
          );
        }
        final raceDetailsRace2Record = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            leading: InkWell(
              onTap: () async {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.chevron_left_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 32,
              ),
            ),
            title: Text(
              raceDetailsRace2Record.libelle,
              style: FlutterFlowTheme.of(context).title2,
            ),
            actions: [],
            centerTitle: false,
            elevation: 0,
          ),
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                raceDetailsRace2Record.descriptif,
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ],
          ),
        );
      },
    );
  }
}
