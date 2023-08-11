import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'aquaria_ticket_model.dart';
export 'aquaria_ticket_model.dart';

class AquariaTicketWidget extends StatefulWidget {
  const AquariaTicketWidget({Key? key}) : super(key: key);

  @override
  _AquariaTicketWidgetState createState() => _AquariaTicketWidgetState();
}

class _AquariaTicketWidgetState extends State<AquariaTicketWidget> {
  late AquariaTicketModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AquariaTicketModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('PlaceDetailsAquaria');
    });
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
                height: 51.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.arrow_back_rounded,
                      color: FlutterFlowTheme.of(context).success,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              Container(
                width: 385.0,
                height: 786.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowWebView(
                      content: 'https://tickets.aquariaklcc.com/',
                      bypass: false,
                      height: 788.0,
                      verticalScroll: false,
                      horizontalScroll: false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
