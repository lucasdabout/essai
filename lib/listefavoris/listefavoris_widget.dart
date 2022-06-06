import '../animalclick/animalclick_widget.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ListefavorisWidget extends StatefulWidget {
  const ListefavorisWidget({Key key}) : super(key: key);

  @override
  _ListefavorisWidgetState createState() => _ListefavorisWidgetState();
}

class _ListefavorisWidgetState extends State<ListefavorisWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF395C),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Vos favoris',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Overpass',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: StreamBuilder<List<AnimalRecord>>(
                    stream: queryAnimalRecord(
                      queryBuilder: (animalRecord) =>
                          animalRecord.where('favoris', isEqualTo: true),
                    ),
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
                      List<AnimalRecord> listViewAnimalRecordList =
                          snapshot.data;
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewAnimalRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewAnimalRecord =
                              listViewAnimalRecordList[listViewIndex];
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AnimalclickWidget(
                                        details: listViewAnimalRecord.reference,
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.network(
                                        listViewAnimalRecord.imageUrl,
                                      ).image,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.9, -0.85),
                                    child: ToggleIcon(
                                      onPressed: () async {
                                        final animalUpdateData =
                                            createAnimalRecordData(
                                          favoris:
                                              !listViewAnimalRecord.favoris,
                                        );
                                        await listViewAnimalRecord.reference
                                            .update(animalUpdateData);
                                      },
                                      value: listViewAnimalRecord.favoris,
                                      onIcon: Icon(
                                        Icons.favorite_outlined,
                                        color: Color(0xFFFF395C),
                                        size: 25,
                                      ),
                                      offIcon: Icon(
                                        Icons.favorite_border_sharp,
                                        color:
                                            FlutterFlowTheme.of(context).white,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
