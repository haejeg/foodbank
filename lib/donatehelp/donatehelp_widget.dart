import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DonatehelpWidget extends StatefulWidget {
  const DonatehelpWidget({Key key}) : super(key: key);

  @override
  _DonatehelpWidgetState createState() => _DonatehelpWidgetState();
}

class _DonatehelpWidgetState extends State<DonatehelpWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('Button-ON_TAP');
                    logFirebaseEvent('Button-Navigate-Back');
                    Navigator.pop(context);
                  },
                  text: 'Return',
                  icon: Icon(
                    Icons.keyboard_return,
                    size: 15,
                  ),
                  options: FFButtonOptions(
                    width: 150,
                    height: 40,
                    color: FlutterFlowTheme.of(context).alternate,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
        ),
      ),
    );
  }
}
