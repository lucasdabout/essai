import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_search/text_search.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  List<AnimalRecord> simpleSearchResults = [];
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                          child: TextFormField(
                            controller: textController,
                            onChanged: (_) => EasyDebounce.debounce(
                              'textController',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            onFieldSubmitted: (_) async {
                              await queryAnimalRecordOnce()
                                  .then(
                                    (records) => simpleSearchResults =
                                        TextSearch(
                                      records
                                          .map(
                                            (record) => TextSearchItem(
                                                record, [record.nom]),
                                          )
                                          .toList(),
                                    )
                                            .search(textController.text)
                                            .map((r) => r.object)
                                            .toList(),
                                  )
                                  .onError((_, __) => simpleSearchResults = [])
                                  .whenComplete(() => setState(() {}));
                            },
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelText: 'Qu\'est ce que vous rechercher ?',
                              hintText: 'Écrivez ici...',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x0057636C),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x0057636C),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).white,
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                              prefixIcon: Icon(
                                Icons.search,
                                color: FlutterFlowTheme.of(context).grayDark,
                                size: 16,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: StreamBuilder<List<AnimalRecord>>(
                        stream: queryAnimalRecord(),
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
                          List<AnimalRecord> gridViewAnimalRecordList =
                              snapshot.data;
                          return GridView.builder(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 1,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: gridViewAnimalRecordList.length,
                            itemBuilder: (context, gridViewIndex) {
                              final gridViewAnimalRecord =
                                  gridViewAnimalRecordList[gridViewIndex];
                              return Image.network(
                                gridViewAnimalRecord.imageUrl,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
