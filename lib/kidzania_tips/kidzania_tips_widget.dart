import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'kidzania_tips_model.dart';
export 'kidzania_tips_model.dart';

class KidzaniaTipsWidget extends StatefulWidget {
  const KidzaniaTipsWidget({Key? key}) : super(key: key);

  @override
  _KidzaniaTipsWidgetState createState() => _KidzaniaTipsWidgetState();
}

class _KidzaniaTipsWidgetState extends State<KidzaniaTipsWidget> {
  late KidzaniaTipsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KidzaniaTipsModel());
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
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowIconButton(
                    borderColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      color: FlutterFlowTheme.of(context).success,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pushNamed('PlaceDetailsKidzania');
                    },
                  ),
                  Text(
                    '        \n                           SOURCE: TRAVELOKA',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 12.0,
                        ),
                  ),
                ],
              ),
              Container(
                width: 390.0,
                height: 800.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      '\nTIPS FOR FAMILY TRIP IN KIDZANIA\n',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    FlutterFlowCheckboxGroup(
                      options: ['Book tickets and arrive early'],
                      onChanged: (val) =>
                          setState(() => _model.checkboxGroupValues1 = val),
                      controller: _model.checkboxGroupValueController1 ??=
                          FormFieldController<List<String>>(
                        [],
                      ),
                      activeColor: FlutterFlowTheme.of(context).primary,
                      checkColor: FlutterFlowTheme.of(context).info,
                      checkboxBorderColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Readex Pro',
                                fontWeight: FontWeight.w600,
                              ),
                      checkboxBorderRadius: BorderRadius.circular(4.0),
                      initialized: _model.checkboxGroupValues1 != null,
                    ),
                    Container(
                      width: 323.0,
                      height: 66.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Text(
                        'We recommend you book the tickets online! You should arrive early to get a head start before the crowd kicks in. Checking in is a breeze – just scan your ‘boarding pass’ and you’re in!',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).success,
                              fontSize: 12.0,
                            ),
                      ),
                    ),
                    FlutterFlowCheckboxGroup(
                      options: ['Get a map'],
                      onChanged: (val) =>
                          setState(() => _model.checkboxGroupValues2 = val),
                      controller: _model.checkboxGroupValueController2 ??=
                          FormFieldController<List<String>>(
                        [],
                      ),
                      activeColor: FlutterFlowTheme.of(context).primary,
                      checkColor: FlutterFlowTheme.of(context).info,
                      checkboxBorderColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Readex Pro',
                                fontWeight: FontWeight.w600,
                              ),
                      checkboxBorderRadius: BorderRadius.circular(4.0),
                      initialized: _model.checkboxGroupValues2 != null,
                    ),
                    Container(
                      width: 322.0,
                      height: 84.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Text(
                        'Before your kids start the activities, go to the KidZania Information Counter and grab a map to navigate the two-level theme park. It will also be useful to have the map as you can plan your time around popular attractions.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).success,
                              fontSize: 12.0,
                            ),
                      ),
                    ),
                    FlutterFlowCheckboxGroup(
                      options: ['Bring a friend'],
                      onChanged: (val) =>
                          setState(() => _model.checkboxGroupValues3 = val),
                      controller: _model.checkboxGroupValueController3 ??=
                          FormFieldController<List<String>>(
                        [],
                      ),
                      activeColor: FlutterFlowTheme.of(context).primary,
                      checkColor: FlutterFlowTheme.of(context).info,
                      checkboxBorderColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Readex Pro',
                                fontWeight: FontWeight.w600,
                              ),
                      checkboxBorderRadius: BorderRadius.circular(4.0),
                      initialized: _model.checkboxGroupValues3 != null,
                    ),
                    Container(
                      width: 326.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Text(
                        'The queues tend to be quite long, especially on weekends and during the school holidays. So it might be a good idea to bring your kid’s friends along (or yours) to pass time with. Some kids may need more time to warm up their social skills and would definitely be more comfortable if they have familiar faces with them.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).success,
                              fontSize: 12.0,
                            ),
                      ),
                    ),
                    FlutterFlowCheckboxGroup(
                      options: ['Wear comfortable shoes'],
                      onChanged: (val) =>
                          setState(() => _model.checkboxGroupValues4 = val),
                      controller: _model.checkboxGroupValueController4 ??=
                          FormFieldController<List<String>>(
                        [],
                      ),
                      activeColor: FlutterFlowTheme.of(context).primary,
                      checkColor: FlutterFlowTheme.of(context).info,
                      checkboxBorderColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Readex Pro',
                                fontWeight: FontWeight.w600,
                              ),
                      checkboxBorderRadius: BorderRadius.circular(4.0),
                      initialized: _model.checkboxGroupValues4 != null,
                    ),
                    Container(
                      width: 325.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Text(
                        'The kids will be spending a lot of time on their feet so we recommend they wear comfortable shoes. We suggest a pair of covered shoes as some jobs like the Climber would require the ‘workers’ to climb on the facade of a building and learn about courage and safety along the way.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).success,
                              fontSize: 12.0,
                            ),
                      ),
                    ),
                    FlutterFlowCheckboxGroup(
                      options: ['Try jobs with shorter queues'],
                      onChanged: (val) =>
                          setState(() => _model.checkboxGroupValues5 = val),
                      controller: _model.checkboxGroupValueController5 ??=
                          FormFieldController<List<String>>(
                        [],
                      ),
                      activeColor: FlutterFlowTheme.of(context).primary,
                      checkColor: FlutterFlowTheme.of(context).info,
                      checkboxBorderColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Readex Pro',
                                fontWeight: FontWeight.w600,
                              ),
                      checkboxBorderRadius: BorderRadius.circular(4.0),
                      initialized: _model.checkboxGroupValues5 != null,
                    ),
                    Container(
                      width: 321.0,
                      height: 88.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Text(
                        'In between the longer queue for the more popular ‘jobs’, maximize your time at KidZania by joining activities to earn some kidZos. They would need to spend kidZos on activities such as Face Painting, Jewellery Making and Studio Painting.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).success,
                              fontSize: 12.0,
                            ),
                      ),
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
