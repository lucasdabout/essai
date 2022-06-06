import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../race_details/race_details_widget.dart';
import '../refuge_details/refuge_details_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimalclickWidget extends StatefulWidget {
  const AnimalclickWidget({
    Key key,
    this.details,
    this.nomrefuge,
  }) : super(key: key);

  final DocumentReference details;
  final DocumentReference nomrefuge;

  @override
  _AnimalclickWidgetState createState() => _AnimalclickWidgetState();
}

class _AnimalclickWidgetState extends State<AnimalclickWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AnimalRecord>(
      stream: AnimalRecord.getDocument(widget.details),
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
                                child: SpinKitCircle(
                                  color: Color(0xFFFF395C),
                                  size: 40,
                                ),
                              ),
                            );
                          }
                          final textRefugeRecord = snapshot.data;
                          return InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RefugeDetailsWidget(
                                    refugeDetails: textRefugeRecord.reference,
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              textRefugeRecord.nom,
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          );
                        },
                      ),
                      ToggleIcon(
                        onPressed: () async {
                          final animalUpdateData = createAnimalRecordData(
                            favoris: !animalclickAnimalRecord.favoris,
                          );
                          await animalclickAnimalRecord.reference
                              .update(animalUpdateData);
                        },
                        value: animalclickAnimalRecord.favoris,
                        onIcon: Icon(
                          Icons.favorite,
                          color: Color(0xFFFF395C),
                          size: 25,
                        ),
                        offIcon: Icon(
                          Icons.favorite_border_sharp,
                          color: Colors.black,
                          size: 25,
                        ),
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
                        child: StreamBuilder<Race2Record>(
                          stream: Race2Record.getDocument(
                              animalclickAnimalRecord.race),
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
                            final textRace2Record = snapshot.data;
                            return InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RaceDetailsWidget(
                                      racedetails: textRace2Record.reference,
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                textRace2Record.libelle,
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFFFF395C),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            );
                          },
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
                          'Date de naissance : ${dateTimeFormat('d/M/y', animalclickAnimalRecord.dateNaissance)}',
                          style: FlutterFlowTheme.of(context)
                              .bodyText2
                              .override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).textColor,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
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
                          'Sexe : ${animalclickAnimalRecord.sexe}',
                          style: FlutterFlowTheme.of(context)
                              .bodyText2
                              .override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).textColor,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
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
                          'Couleur : ${animalclickAnimalRecord.couleur}',
                          style: FlutterFlowTheme.of(context)
                              .bodyText2
                              .override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).textColor,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
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
                          'Frais : ${animalclickAnimalRecord.frais.toString()}€',
                          style: FlutterFlowTheme.of(context)
                              .bodyText2
                              .override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).textColor,
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
