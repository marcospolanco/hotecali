import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home/home_widget.dart';
import '../splash/splash_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({
    Key? key,
    this.home,
    this.list,
    this.find,
    this.account,
  }) : super(key: key);

  final bool? home;
  final bool? list;
  final bool? find;
  final bool? account;

  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'stackOnPageLoadAnimation1': AnimationInfo(
      curve: Curves.elasticOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 900,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 44),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 20),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'stackOnPageLoadAnimation2': AnimationInfo(
      curve: Curves.elasticOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 900,
      delay: 150,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 44),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 20),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'stackOnPageLoadAnimation3': AnimationInfo(
      curve: Curves.elasticOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 900,
      delay: 300,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 44),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 20),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'stackOnPageLoadAnimation4': AnimationInfo(
      curve: Curves.elasticOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 900,
      delay: 450,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 44),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 20),
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
    return Container(
      width: double.infinity,
      height: 88,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: InkWell(
                onTap: () async {
                  if (!widget.home!) {
                    await Navigator.pushAndRemoveUntil(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 300),
                        reverseDuration: Duration(milliseconds: 300),
                        child: SplashWidget(),
                      ),
                      (r) => false,
                    );
                  }
                },
                child: Stack(
                  alignment: AlignmentDirectional(0, 0),
                  children: [
                    if (!widget.home!)
                      Icon(
                        FFIcons.khome8,
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        size: 42,
                      ),
                    if (widget.home ?? true)
                      Icon(
                        FFIcons.khome8,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        size: 42,
                      ),
                    if (widget.home ?? true)
                      Align(
                        alignment: AlignmentDirectional(0, 0.7),
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x8396C3E2),
                                offset: Offset(0, 2),
                              )
                            ],
                            shape: BoxShape.circle,
                          ),
                        ).animated(
                            [animationsMap['containerOnPageLoadAnimation1']!]),
                      ),
                  ],
                ),
              ).animated([animationsMap['stackOnPageLoadAnimation1']!]),
            ),
            Expanded(
              child: InkWell(
                onTap: () async {
                  if (!widget.list!) {
                    await Navigator.pushAndRemoveUntil(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 300),
                        reverseDuration: Duration(milliseconds: 300),
                        child: HomeWidget(),
                      ),
                      (r) => false,
                    );
                  }
                },
                child: Stack(
                  alignment: AlignmentDirectional(0, 0),
                  children: [
                    if (!widget.list!)
                      Icon(
                        FFIcons.kwifi1,
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        size: 42,
                      ),
                    if (widget.list ?? true)
                      Icon(
                        FFIcons.kwifi1,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        size: 42,
                      ),
                    if (widget.list ?? true)
                      Align(
                        alignment: AlignmentDirectional(0, 0.7),
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x8396C3E2),
                                offset: Offset(0, 2),
                              )
                            ],
                            shape: BoxShape.circle,
                          ),
                        ).animated(
                            [animationsMap['containerOnPageLoadAnimation2']!]),
                      ),
                  ],
                ),
              ).animated([animationsMap['stackOnPageLoadAnimation2']!]),
            ),
            Expanded(
              child: InkWell(
                onTap: () async {
                  if (!widget.list!) {
                    await Navigator.pushAndRemoveUntil(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 300),
                        reverseDuration: Duration(milliseconds: 300),
                        child: SplashWidget(),
                      ),
                      (r) => false,
                    );
                  }
                },
                child: Stack(
                  alignment: AlignmentDirectional(0, 0),
                  children: [
                    if (!widget.find!)
                      Icon(
                        FFIcons.ksteeringWheel,
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        size: 42,
                      ),
                    if (widget.find ?? true)
                      Icon(
                        FFIcons.ksteeringWheel,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        size: 42,
                      ),
                    if (widget.find ?? true)
                      Align(
                        alignment: AlignmentDirectional(0, 0.7),
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x8396C3E2),
                                offset: Offset(0, 2),
                              )
                            ],
                            shape: BoxShape.circle,
                          ),
                        ).animated(
                            [animationsMap['containerOnPageLoadAnimation3']!]),
                      ),
                  ],
                ),
              ).animated([animationsMap['stackOnPageLoadAnimation3']!]),
            ),
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional(0, 0),
                children: [
                  if (!widget.account!)
                    Icon(
                      FFIcons.kuser5,
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      size: 42,
                    ),
                  if (widget.account ?? true)
                    Icon(
                      FFIcons.kuser5,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 42,
                    ),
                  if (widget.account ?? true)
                    Align(
                      alignment: AlignmentDirectional(0, 0.7),
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryColor,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x8396C3E2),
                              offset: Offset(0, 2),
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                      ).animated(
                          [animationsMap['containerOnPageLoadAnimation4']!]),
                    ),
                ],
              ).animated([animationsMap['stackOnPageLoadAnimation4']!]),
            ),
          ],
        ),
      ),
    );
  }
}
