import '../auth/auth_util.dart';
import '../changepw/changepw_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../navbar/navbar_widget.dart';
import '../signin/signin_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MyaccountWidget extends StatefulWidget {
  const MyaccountWidget({Key key}) : super(key: key);

  @override
  _MyaccountWidgetState createState() => _MyaccountWidgetState();
}

class _MyaccountWidgetState extends State<MyaccountWidget> {
  bool switchListTileValue1;
  bool switchListTileValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
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
                              reverseDuration: Duration(milliseconds: 200),
                              child: NavbarWidget(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Text(
                  'My Account',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 20, 0, 0),
                      child: Text(
                        'User Settings',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).subtitle1.override(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: SwitchListTile.adaptive(
                    value: switchListTileValue1 ??= FFAppState().notifications,
                    onChanged: (newValue) =>
                        setState(() => switchListTileValue1 = newValue),
                    title: Text(
                      'Notifications',
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Lexend Deca',
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    subtitle: Text(
                      'Receieve notifications when people are ready to pick the food up/arrive at the destined location.',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFFB7BCC1),
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                    activeColor: Color(0xFF834585),
                    activeTrackColor: Color(0x66371638),
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
                  ),
                ),
                SwitchListTile.adaptive(
                  value: switchListTileValue2 ??= FFAppState().temperature,
                  onChanged: (newValue) =>
                      setState(() => switchListTileValue2 = newValue),
                  title: Text(
                    'Temperature Mode',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  subtitle: Text(
                    'Change the temperature mode between Fahrenheit and Celsius.',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFFB7BCC1),
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  activeColor: Color(0xFF834585),
                  activeTrackColor: Color(0x67371638),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('Button-Login-ON_TAP');
                      logFirebaseEvent('Button-Login-Update-Local-State');
                      setState(() =>
                          FFAppState().temperature = switchListTileValue2);
                      logFirebaseEvent('Button-Login-Update-Local-State');
                      setState(() =>
                          FFAppState().notifications = switchListTileValue1);
                      logFirebaseEvent('Button-Login-Navigate-Back');
                      Navigator.pop(context);
                    },
                    text: 'Save Changes',
                    options: FFButtonOptions(
                      width: 150,
                      height: 40,
                      color: FlutterFlowTheme.of(context).secondaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
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
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 20, 0, 0),
                child: Text(
                  'Account Settings',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: FFButtonWidget(
              onPressed: () async {
                logFirebaseEvent('Button-Login-ON_TAP');
                logFirebaseEvent('Button-Login-Auth');
                await signOut();
                logFirebaseEvent('Button-Login-Navigate-To');
                await Navigator.pushAndRemoveUntil(
                  context,
                  PageTransition(
                    type: PageTransitionType.scale,
                    alignment: Alignment.bottomCenter,
                    duration: Duration(milliseconds: 500),
                    reverseDuration: Duration(milliseconds: 500),
                    child: SigninWidget(),
                  ),
                  (r) => false,
                );
              },
              text: 'Sign Out',
              options: FFButtonOptions(
                width: 150,
                height: 40,
                color: FlutterFlowTheme.of(context).secondaryColor,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: FFButtonWidget(
              onPressed: () async {
                logFirebaseEvent('Button-Login-ON_TAP');
                logFirebaseEvent('Button-Login-Navigate-To');
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.scale,
                    alignment: Alignment.bottomCenter,
                    duration: Duration(milliseconds: 500),
                    reverseDuration: Duration(milliseconds: 500),
                    child: ChangepwWidget(),
                  ),
                );
              },
              text: 'Change Password',
              options: FFButtonOptions(
                width: 160,
                height: 40,
                color: FlutterFlowTheme.of(context).secondaryColor,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
    );
  }
}
