import 'dart:ui';
import 'package:akpaintproject/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Align(
            alignment: AlignmentDirectional(0, -1),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 1),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: Container(
                        height: 400,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/ak.jpg',
                                width: MediaQuery.of(context).size.width,
                                height: 550,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, -0.95),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color(0x7BFFFFFF),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: IconButton(
                                        iconSize: 60,
                                        icon: Icon(
                                          Icons.chevron_left,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        onPressed: () async {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const HomePageWidget()));
                                          HapticFeedback.mediumImpact();
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 1),
                              child: ClipRect(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 2.5,
                                    sigmaY: 2.5,
                                  ),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      color: Color(0x001D2429),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(0),
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 0, 15, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Anand Krishna',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.white,
                                                  fontSize: 26,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Designer',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(6, 0, 0, 0),
                                                child: InkWell(
                                                  onTap: () async {
                                                    await launch(
                                                        'https://www.instagram.com/anand.krishna_/');
                                                  },
                                                  child: Text(
                                                    '@anandkrishna_',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'Raleway',
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 6, 0, 0),
                                                child: IconButton(
                                                  iconSize: 60,
                                                  icon: FaIcon(
                                                    FontAwesomeIcons.whatsapp,
                                                    color: Colors.white,
                                                    size: 30,
                                                  ),
                                                  onPressed: () async {
                                                    await launch(
                                                        'https://wa.me/919645304925?text=Hello!!');
                                                    HapticFeedback
                                                        .mediumImpact();
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 6, 0, 0),
                                                child: IconButton(
                                                  iconSize: 60,
                                                  icon: FaIcon(
                                                    FontAwesomeIcons.instagram,
                                                    color: Colors.white,
                                                    size: 30,
                                                  ),
                                                  onPressed: () async {
                                                    await launch(
                                                        'https://www.instagram.com/anand.krishna_/');
                                                    HapticFeedback
                                                        .mediumImpact();
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 0),
                                                child: IconButton(
                                                  iconSize: 60,
                                                  icon: FaIcon(
                                                    FontAwesomeIcons.github,
                                                    color: Colors.white,
                                                    size: 30,
                                                  ),
                                                  onPressed: () async {
                                                    await launch(
                                                        'https://github.com/Krishak15');
                                                    HapticFeedback
                                                        .mediumImpact();
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
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                      child: Container(
                        height: 390,
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1663856801279-e476a878fd55?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                                    width: MediaQuery.of(context).size.width,
                                    height:
                                        MediaQuery.of(context).size.height * 1,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 1),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 2,
                                          sigmaY: 4,
                                        ),
                                        child: Container(
                                          width: 100,
                                          height: 150,
                                          decoration: BoxDecoration(
                                            color: Color(0x001D2429),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                              topLeft: Radius.circular(0),
                                              topRight: Radius.circular(0),
                                            ),
                                          ),
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
                                Align(
                                  alignment: AlignmentDirectional(0, 0.30),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 20, 0, 0),
                                    child: Text('Resume',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 25,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0.45),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0.5),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 50, 0, 0),
                                        child: Text(
                                          'Updated on\n23 September \'22',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w200,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0.56),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            150, 0, 0, 0),
                                        child: InkWell(
                                          onTap: () async {
                                            await launch(
                                                'https://drive.google.com/u/0/uc?id=1wvOw6x-xSDZCpKw2KgudzwjYXc53EJWP&export=download');
                                            HapticFeedback.mediumImpact();
                                          },
                                          child: FaIcon(
                                            FontAwesomeIcons.download,
                                            color: Colors.white,
                                            size: 30,
                                          ),
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
