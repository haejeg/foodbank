import '../aboutus/aboutus_widget.dart';
import '../donate/donate_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home/home_widget.dart';
import '../myaccount/myaccount_widget.dart';
import '../volunteer/volunteer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({Key key}) : super(key: key);

  @override
  _NavbarWidgetState createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 870,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: Color(0xFF391026),
                borderRadius: BorderRadius.circular(0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 130, 0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () async {
                        logFirebaseEvent('IconButton-ON_TAP');
                        logFirebaseEvent('IconButton-Navigate-Back');
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        logFirebaseEvent('Text-ON_TAP');
                        logFirebaseEvent('Text-Navigate-To');
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 200),
                            reverseDuration: Duration(milliseconds: 200),
                            child: HomeWidget(),
                          ),
                        );
                      },
                      child: Text(
                        'Home',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 20,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        logFirebaseEvent('Text-ON_TAP');
                        logFirebaseEvent('Text-Navigate-To');
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 200),
                            reverseDuration: Duration(milliseconds: 200),
                            child: DonateWidget(),
                          ),
                        );
                      },
                      child: Text(
                        'Donate',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 20,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        logFirebaseEvent('Text-ON_TAP');
                        logFirebaseEvent('Text-Navigate-To');
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 200),
                            reverseDuration: Duration(milliseconds: 200),
                            child: VolunteerWidget(),
                          ),
                        );
                      },
                      child: Text(
                        'Volunteer',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 20,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        logFirebaseEvent('Text-ON_TAP');
                        logFirebaseEvent('Text-Navigate-To');
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 200),
                            reverseDuration: Duration(milliseconds: 200),
                            child: MyaccountWidget(),
                          ),
                        );
                      },
                      child: Text(
                        'My Account',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 20,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        logFirebaseEvent('Text-ON_TAP');
                        logFirebaseEvent('Text-Navigate-To');
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 200),
                            reverseDuration: Duration(milliseconds: 200),
                            child: AboutusWidget(),
                          ),
                        );
                      },
                      child: Text(
                        'About Us',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 20,
                            ),
                      ),
                    ),
                  ),
                ],
              ).animated([animationsMap['columnOnPageLoadAnimation']]),
            ),
            InkWell(
              onTap: () async {
                logFirebaseEvent('Container-ON_TAP');
                logFirebaseEvent('Container-Navigate-Back');
                Navigator.pop(context);
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  color: Color(0x3F000000),
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ).animated([animationsMap['containerOnPageLoadAnimation']]),
          ],
        ),
      ),
    );
  }
}
