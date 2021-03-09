import 'package:flutter/material.dart';
import 'package:port_dart/app/screens/experience/components/dot.dart';
import 'package:port_dart/app/utils/colors.dart';
import 'package:port_dart/app/utils/responsive.dart';

class RowXp extends StatelessWidget {
  final String time;
  final String ocupation;
  final String company;
  final Widget itemXp;
  const RowXp({
    Key key,
    this.time,
    this.ocupation,
    this.company,
    this.itemXp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Column(
            children: [
              Container(
                child: Text(
                  time,
                  style: TextStyle(
                    fontFamily: 'FiraCode',
                    color: MyColors.white,
                    fontSize: 11,
                  ),
                ),
              ),
              SizedBox(height: 24),
              Stack(
                children: [
                  Positioned.fill(
                    child: Card(
                      elevation: 5,
                      shadowColor: MyColors.background,
                      color: MyColors.mako,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 10,
                      width: 40,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 2,
                              width: 40,
                              color: MyColors.magicMint,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Dot(),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              company,
                              style: TextStyle(
                                fontFamily: 'FiraCode',
                                color: MyColors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              ocupation,
                              style: TextStyle(
                                fontFamily: 'FiraCode',
                                color: MyColors.white,
                              ),
                            ),
                            SizedBox(height: 18),
                            itemXp
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        : Row(
            children: [
              Container(
                width: 200,
                child: Text(
                  time,
                  style: TextStyle(
                    fontFamily: 'FiraCode',
                    color: MyColors.white,
                    fontSize: 11,
                  ),
                ),
              ),
              SizedBox(width: 24),
              Expanded(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Card(
                          elevation: 5,
                          shadowColor: MyColors.background,
                          color: MyColors.mako,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, right: 20, bottom: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 10,
                            width: 40,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 2,
                                    width: 40,
                                    color: MyColors.magicMint,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Dot(),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  company,
                                  style: TextStyle(
                                    fontFamily: 'FiraCode',
                                    color: MyColors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  ocupation,
                                  style: TextStyle(
                                    fontFamily: 'FiraCode',
                                    color: MyColors.white,
                                  ),
                                ),
                                SizedBox(height: 18),
                                itemXp
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          );
  }
}
