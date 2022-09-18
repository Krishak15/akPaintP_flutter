import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: Align(
            alignment: AlignmentDirectional(-0.15, -0.4),
            child: InkWell(
              onTap: () async {
                await launchUrlString(
                    'https://www.instagram.com/akpaintproject/');
              },
              child: FaIcon(
                FontAwesomeIcons.instagram,
                color: Color(0xFFFF0651),
                size: 24,
              ),
            ),
          ),
          flexibleSpace: Align(
            alignment: AlignmentDirectional(0, 0.42),
            child: GradientText(
              'AKPAINTPROJECT',
              // ignore: prefer_const_constructors
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              colors: [Color(0xFFEF3999), Color(0xFF08EAD1)],
              gradientDirection: GradientDirection.ltr,
              gradientType: GradientType.linear,
            ),
          ),
          actions: [],
          elevation: 1,
        ),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        elevation: 8,
        child: Align(
          alignment: AlignmentDirectional(0, -0.2),
          child: IconButton(
            icon: FaIcon(
              FontAwesomeIcons.whatsapp,
              color: Color(0xFF51EF39),
              size: 30,
            ),
            onPressed: () async {
              await launch('https://wa.me/919645304925?text=Hello!!');
            },
          ),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: WebView(
                      initialUrl: 'https://akpaintproject.netlify.app',
                      javascriptMode: JavascriptMode.unrestricted,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
