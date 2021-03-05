import 'package:flutter/material.dart';
import 'package:port_dart/app/utils/colors.dart';
import 'package:port_dart/app/utils/images.dart';

class HomeScreen extends StatelessWidget {
  final dataKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: Container(
          decoration: BoxDecoration(color: MyColors.background, boxShadow: [
            BoxShadow(
                color: Colors.black, offset: Offset(0.0, 1.0), blurRadius: 6.0)
          ]),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Text(
                  '<Renan Kanu>',
                  style: TextStyle(color: Colors.white, fontFamily: 'FiraCode'),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Discover',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(width: screenSize.width / 20),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Contact Us',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: screenSize.width / 50,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              MyImages.background,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Column(
                children: [
                  new SizedBox(
                      height: 360.0, width: double.infinity, child: new Card()),
                  new SizedBox(
                      height: 360.0, width: double.infinity, child: new Card()),
                  new SizedBox(
                      height: 360.0, width: double.infinity, child: new Card()),
                  // destination
                  new Card(
                    key: dataKey,
                    child: new Text("data\n\n\n\n\n\ndata"),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 48,
              color: MyColors.white,
            ),
            // child: InkWell(
            //   onTap: () => Scrollable.ensureVisible(dataKey.currentContext),
            //   child: new Text("Scroll to data"),
            // ),
          )
        ],
      ),
    );
  }
}
