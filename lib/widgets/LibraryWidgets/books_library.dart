import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green/Data/data.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class BooksLibrary extends StatefulWidget {
  final GlobalKey<ScaffoldState> scafolldBookLibrary;

  const BooksLibrary({Key key, this.scafolldBookLibrary}) : super(key: key);

  @override
  _BooksLibraryState createState() => _BooksLibraryState();
}

class _BooksLibraryState extends State<BooksLibrary> {
  bool saved = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 160,
          decoration: BoxDecoration(
          // color: Colors.amber,
              border: Border(
                  bottom: BorderSide(
                      color:Color(0xff1E7145),
                      width: 1,
                      style: BorderStyle.solid))),
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: <Widget>[
              Container(
                //==============
               
                decoration: BoxDecoration(
                    color: Color(0xff1E7145),
                    image: DecorationImage(
                                    image: NetworkImage(
                                        DataSource.booksInfo[Random().nextInt(DataSource.booksInfo.length)]['imgurl']),
                                    fit: BoxFit.contain),
                    borderRadius: BorderRadius.circular(10.0)),
                width: MediaQuery.of(context).size.width * .33,
                
                height: 140,
                // child: FlutterLogo(),
              ),
              SizedBox(width: 10),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '???????? ??????????',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Text('?????????? ????????????????'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                Icons.turned_in,
                                size: 30,
                                color: Color(0xff1E7145),
                              ),
                              onPressed: () {
                                return showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      CupertinoAlertDialog(
                                    title: Text("???? ?????? ?????????? ???? ?????? ????????????"),
                                    actions: [
                                      CupertinoDialogAction(
                                          isDefaultAction: true,
                                          onPressed: () {
                                            print('cancel');
                                            Navigator.pop(context);
                                          },
                                          child: Text("??????????")),
                                      CupertinoDialogAction(
                                          isDefaultAction: true,
                                          onPressed: () {
                                            print('remove');
                                            widget.scafolldBookLibrary
                                                .currentState
                                                // ignore: deprecated_member_use
                                                .showSnackBar(SnackBar(
                                                    backgroundColor:
                                                        Color(0xff1E7145),
                                                    content: Container(
                                                      height: 30,
                                                      child: Center(
                                                        child: Text(
                                                          '???? ?????????? ???? ??????????????',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontFamily:
                                                                  'cairo'),
                                                        ),
                                                      ),
                                                    )));
                                            Navigator.pop(context);
                                          },
                                          child: Text("??????")),
                                    ],
                                  ),
                                );
                              }),
                          SizedBox(width: 15),
                          IconButton(
                              icon: saved
                                  ? Icon(
                                      Icons.check_circle,
                                      size: 30,
                                      color: Color(0xff1E7145),
                                    )
                                  : Icon(
                                      Icons.save_alt,
                                      size: 30,
                                      color: Colors.grey,
                                    ),
                              onPressed: () {
                                return setState(() {
                                  return saved = !saved;
                                });
                              })
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      LinearPercentIndicator(
                        isRTL: true,
                        width: MediaQuery.of(context).size.width * .45,
                        animation: true,
                        lineHeight: 5.0,
                        animationDuration: 1000,
                        percent: 0.3,
                        // center: Text("90.0%"),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: Color(0xff1E7145),
                      ),
                      Text(
                        '30 %',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ))
            ],
          ),
        );
      },
      itemCount: 20,
    );
  }
}
