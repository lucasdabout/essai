import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimalclickWidget extends StatefulWidget {
  const AnimalclickWidget({
    Key key,
    this.detailanimaux,
  }) : super(key: key);

  final DocumentReference detailanimaux;

  @override
  _AnimalclickWidgetState createState() => _AnimalclickWidgetState();
}

class _AnimalclickWidgetState extends State<AnimalclickWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AnimalRecord>(
      stream: AnimalRecord.getDocument(widget.detailanimaux),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 40,
              height: 40,
              child: SpinKitWanderingCubes(
                color: Color(0xFFFF395C),
                size: 40,
              ),
            ),
          );
        }
        final animalclickAnimalRecord = snapshot.data;
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
              'A propos',
              style: FlutterFlowTheme.of(context).title2,
            ),
            actions: [],
            centerTitle: false,
            elevation: 0,
          ),
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.network(
                      animalclickAnimalRecord.imageUrl,
                      width: MediaQuery.of(context).size.width,
                      height: 230,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          animalclickAnimalRecord.nom,
                          style: FlutterFlowTheme.of(context).title2,
                        ),
                      ),
                      StreamBuilder<RefugeRecord>(
                        stream: RefugeRecord.getDocument(
                            animalclickAnimalRecord.refugeanimal),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: SpinKitWanderingCubes(
                                  color: Color(0xFFFF395C),
                                  size: 40,
                                ),
                              ),
                            );
                          }
                          final textRefugeRecord = snapshot.data;
                          return Text(
                            textRefugeRecord.nom,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          dateTimeFormat(
                              'd/M/y', animalclickAnimalRecord.dateNaissance),
                          style: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Lexend Deca',
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          animalclickAnimalRecord.description,
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          '${animalclickAnimalRecord.couleur} - ${animalclickAnimalRecord.sexe} - ${animalclickAnimalRecord.frais.toString()}',
                          style: FlutterFlowTheme.of(context)
                              .bodyText2
                              .override(
                                fontFamily: 'Lexend Deca',
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
