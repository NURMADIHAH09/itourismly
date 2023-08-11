import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'website_h_b_m_model.dart';
export 'website_h_b_m_model.dart';

class WebsiteHBMWidget extends StatefulWidget {
  const WebsiteHBMWidget({Key? key}) : super(key: key);

  @override
  _WebsiteHBMWidgetState createState() => _WebsiteHBMWidgetState();
}

class _WebsiteHBMWidgetState extends State<WebsiteHBMWidget> {
  late WebsiteHBMModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WebsiteHBMModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 391.0,
                height: 66.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Color(0x00FFFFFF),
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      icon: Icon(
                        Icons.arrow_back,
                        color: FlutterFlowTheme.of(context).success,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.pushNamed('PlaceDetailsKidzania');
                      },
                    ),
                  ],
                ),
              ),
              Container(
                width: 391.0,
                height: 779.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: FlutterFlowWebView(
                  content: 'https://www.hbmfamilyclinic.com/',
                  bypass: false,
                  height: 983.0,
                  verticalScroll: false,
                  horizontalScroll: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
