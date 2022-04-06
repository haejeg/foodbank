import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../donate/donate_widget.dart';
import '../donatehelp/donatehelp_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../navbar/navbar_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DonatefoodWidget extends StatefulWidget {
  const DonatefoodWidget({Key key}) : super(key: key);

  @override
  _DonatefoodWidgetState createState() => _DonatefoodWidgetState();
}

class _DonatefoodWidgetState extends State<DonatefoodWidget> {
  String dropDownValue1;
  String dropDownValue2;
  String dropDownValue3;
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  String dropDownValue4;
  bool checkboxListTileValue;
  TextEditingController textController4;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                icon: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                onPressed: () async {
                                  logFirebaseEvent('IconButton-ON_TAP');
                                  logFirebaseEvent('IconButton-Navigate-To');
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.leftToRight,
                                      duration: Duration(milliseconds: 200),
                                      reverseDuration:
                                          Duration(milliseconds: 200),
                                      child: NavbarWidget(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Donate Now',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                              child: FlutterFlowDropDown(
                                options: [
                                  '10 AM',
                                  '11 AM',
                                  '12 PM',
                                  '1 PM',
                                  '2 PM'
                                ].toList(),
                                onChanged: (val) =>
                                    setState(() => dropDownValue1 = val),
                                width: MediaQuery.of(context).size.width * 0.42,
                                height: 50,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF7E7E7E),
                                    ),
                                hintText: 'Pick up start time',
                                fillColor: Color(0xFFC4C4C4),
                                elevation: 2,
                                borderColor: Color(0xFF7E7E7E),
                                borderWidth: 2,
                                borderRadius: 5,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    12, 4, 12, 4),
                                hidesUnderline: true,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                              child: FlutterFlowDropDown(
                                options: [
                                  '10 AM',
                                  '11 AM',
                                  '12 PM',
                                  '1 PM',
                                  '2 PM',
                                  '3 PM'
                                ].toList(),
                                onChanged: (val) =>
                                    setState(() => dropDownValue2 = val),
                                width: MediaQuery.of(context).size.width * 0.42,
                                height: 50,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF7E7E7E),
                                    ),
                                hintText: 'Pick up end time',
                                fillColor: Color(0xFFC4C4C4),
                                elevation: 2,
                                borderColor: Color(0xFF7E7E7E),
                                borderWidth: 2,
                                borderRadius: 5,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    12, 4, 12, 4),
                                hidesUnderline: true,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                              child: FlutterFlowDropDown(
                                options: ['Colorado'].toList(),
                                onChanged: (val) =>
                                    setState(() => dropDownValue3 = val),
                                width: MediaQuery.of(context).size.width * 0.42,
                                height: 50,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF7E7E7E),
                                    ),
                                hintText: 'State',
                                fillColor: Color(0xFFC4C4C4),
                                elevation: 2,
                                borderColor: Color(0xFF7E7E7E),
                                borderWidth: 2,
                                borderRadius: 5,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    12, 4, 12, 4),
                                hidesUnderline: true,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 20, 20, 0),
                                child: TextFormField(
                                  controller: textController1,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'City',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF7E7E7E),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF7E7E7E),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFFC4C4C4),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF7E7E7E),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 20, 20, 0),
                                child: TextFormField(
                                  controller: textController2,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Address',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF7E7E7E),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF7E7E7E),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFFC4C4C4),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF7E7E7E),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 20, 20, 0),
                                child: TextFormField(
                                  controller: textController3,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Zip code',
                                    hintText: 'Zip code',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF7E7E7E),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF7E7E7E),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFFC4C4C4),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF7E7E7E),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: FlutterFlowDropDown(
                                  options: [
                                    'Small (1-2 Grocery Bags)',
                                    'Medium (3-4 Grocery Bags)',
                                    'Large (5+ Grocery Bags)'
                                  ].toList(),
                                  onChanged: (val) =>
                                      setState(() => dropDownValue4 = val),
                                  width:
                                      MediaQuery.of(context).size.width * 0.42,
                                  height: 50,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF7E7E7E),
                                      ),
                                  hintText: 'Size of donation',
                                  fillColor: Color(0xFFC4C4C4),
                                  elevation: 2,
                                  borderColor: Color(0xFF7E7E7E),
                                  borderWidth: 2,
                                  borderRadius: 5,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12, 4, 12, 4),
                                  hidesUnderline: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 24, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                      ),
                                      unselectedWidgetColor: Color(0xFF95A1AC),
                                    ),
                                    child: CheckboxListTile(
                                      value: checkboxListTileValue ??= false,
                                      onChanged: (newValue) => setState(() =>
                                          checkboxListTileValue = newValue),
                                      title: Text(
                                        'Includes refrigerated items',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                      ),
                                      tileColor: Color(0x00302031),
                                      activeColor: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      dense: false,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                    ),
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
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 20, 20, 0),
                                child: TextFormField(
                                  controller: textController4,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Extra comments',
                                    hintText: 'Extra comments',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF7E7E7E),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF7E7E7E),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFFC4C4C4),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF7E7E7E),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 34, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent('Button-Login-ON_TAP');
                              logFirebaseEvent('Button-Login-Backend-Call');

                              final donationsCreateData =
                                  createDonationsRecordData(
                                zipcode: textController3.text,
                                city: textController1.text,
                                address: textController2.text,
                                starttime: dropDownValue1,
                                endtime: dropDownValue2,
                                state: dropDownValue3,
                                size: dropDownValue4,
                                additionalNotes: textController4.text,
                                refg: checkboxListTileValue,
                              );
                              await DonationsRecord.collection
                                  .doc()
                                  .set(donationsCreateData);
                              logFirebaseEvent('Button-Login-Navigate-To');
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.topToBottom,
                                  duration: Duration(milliseconds: 500),
                                  reverseDuration: Duration(milliseconds: 500),
                                  child: DonateWidget(),
                                ),
                              );
                            },
                            text: 'Submit',
                            options: FFButtonOptions(
                              width: 120,
                              height: 40,
                              color:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                              elevation: 3,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent('Button-ON_TAP');
                              logFirebaseEvent('Button-Navigate-To');
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.leftToRight,
                                  duration: Duration(milliseconds: 400),
                                  reverseDuration: Duration(milliseconds: 400),
                                  child: DonatehelpWidget(),
                                ),
                              );
                            },
                            text: 'More Information',
                            icon: Icon(
                              Icons.info,
                              size: 15,
                            ),
                            options: FFButtonOptions(
                              width: 220,
                              height: 40,
                              color: FlutterFlowTheme.of(context).alternate,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 5,
                            ),
                          ),
                        ),
                      ],
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
