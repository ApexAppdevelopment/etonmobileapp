import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GcashWidget extends StatefulWidget {
  const GcashWidget({
    Key? key,
    this.amount,
  }) : super(key: key);

  final PlansRecord? amount;

  @override
  _GcashWidgetState createState() => _GcashWidgetState();
}

class _GcashWidgetState extends State<GcashWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryColor,
          automaticallyImplyLeading: false,
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 14),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: InkWell(
                      onTap: () async {
                        context.pop();
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 50,
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                color: FlutterFlowTheme.of(context).cultured,
                                size: 30,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                            child: Text(
                              'Back',
                              style:
                                  FlutterFlowTheme.of(context).title2.override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .title2Family,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        fontSize: 16,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .title2Family),
                                      ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
          ),
          elevation: 0,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowWebView(
                url:
                    'https://payments.gcash.com/gcash-cashier-web/1.2.1/index.html#/login?bizNo=20221215121212800110170955233284921&timestamp=1671078806559&sign=FP99R81XlfXBGwGOvYmtElOibUKMSwai2ulZqg6sqqX8NYv%2BvD5cdEcFqTYo7%2FUknq0%2BZIedD7%2FZVzgxcSi05WHWtYORZHfSomECx%2BG53Mk%2BHAWQ1rIyFi33BvUBtNb%2BJtbuvbp10%2BcMlNIGVWr0IynWeVSkd8Wo%2FxmT1f9jldpFW2zr8djnHlDDRVeR1zcCovtMkUKqSuza7XL4p9YklMDEo%2Fg%2BlBBUhu8IaOZ5hXZ%2BJvCLma%2F4zc06VviF4eAHofKkYhU2yueB6HgmG19%2BSay5zGmAR4h4Ee2bljWp48hpZNQvFgZ36jQqZ1JFKGfhk0w1K0nzCm1CrA9a7vMbHw%3D%3D&merchantName=ETON%20CORP&orderAmount=5000.00&pdCode=51051000101000100001&callbackUrl=https%3A%2F%2Fpayments.gcash.com%2Fgcash-cashier-web%2F1.2.1%2Findex.html%23%2Fconfirm%3FbizNo%3D20221215121212800110170955233284921%26timestamp%3D1671078806559%26sign%3DFP99R81XlfXBGwGOvYmtElOibUKMSwai2ulZqg6sqqX8NYv%252BvD5cdEcFqTYo7%252FUknq0%252BZIedD7%252FZVzgxcSi05WHWtYORZHfSomECx%252BG53Mk%252BHAWQ1rIyFi33BvUBtNb%252BJtbuvbp10%252BcMlNIGVWr0IynWeVSkd8Wo%252FxmT1f9jldpFW2zr8djnHlDDRVeR1zcCovtMkUKqSuza7XL4p9YklMDEo%252Fg%252BlBBUhu8IaOZ5hXZ%252BJvCLma%252F4zc06VviF4eAHofKkYhU2yueB6HgmG19%252BSay5zGmAR4h4Ee2bljWp48hpZNQvFgZ36jQqZ1JFKGfhk0w1K0nzCm1CrA9a7vMbHw%253D%253D%26merchantName%3DETON@%2520CORP%26orderAmount%3D5000.00%26pdCode%3D51051000101000100001\n',
                bypass: false,
                height: 812,
                verticalScroll: false,
                horizontalScroll: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
