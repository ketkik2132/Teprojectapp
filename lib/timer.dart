import 'package:flutter/material.dart';
import 'dart:io';
import 'package:firebase_database/firebase_database.dart';

class Timer extends StatefulWidget {
//  const Timer({Key key}) : super(key: key);


  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  final refFirebase =FirebaseDatabase.instance;
  final hourcontroller1= TextEditingController();
  final mincontroller1= TextEditingController();
  final daycontroller1= TextEditingController();
  final hourcontroller2= TextEditingController();
  final mincontroller2= TextEditingController();
  final daycontroller2= TextEditingController();
  final hourcontroller3= TextEditingController();
  final mincontroller3= TextEditingController();
  final daycontroller3= TextEditingController();
  final DBref= FirebaseDatabase.instance.reference();
  String h1='',m1='',d1='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        ),
        body:Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10,20),
            child: Column(
                children: <Widget>[
                  Row(
                    children:<Widget> [
                      Expanded(
                          flex: 1,
                          child: Text('Box1',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),)),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          controller: hourcontroller1,
                          decoration: InputDecoration(
                              hintText: "Hour"
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          controller: mincontroller1,
                          decoration: InputDecoration(
                              hintText: "Minutes"
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Days"
                          ),
                          controller: daycontroller1,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: FlatButton(
                          color: Colors.blueAccent,
                          onPressed: (){
                            h1= hourcontroller1.text;
                            m1= mincontroller1.text;
                            d1= daycontroller1.text;
                            updatetime('timer1',h1,m1,d1);
                          },
                          child: Text('SET', style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                        ),
                      )
                    ],
                  ),


                  SizedBox(
                    height: 20,
                  ),

                  Row(
                    children:<Widget> [
                      Expanded(
                          flex: 1,
                          child: Text('Box2',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),)),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          controller: hourcontroller2,
                          decoration: InputDecoration(
                              hintText: "Hour"
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          controller: mincontroller2,
                          decoration: InputDecoration(
                              hintText: "Minutes"
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Days"
                          ),
                          controller: daycontroller2,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: FlatButton(
                          color: Colors.blueAccent,
                          onPressed: (){
                            h1= hourcontroller2.text;
                            m1= mincontroller2.text;
                            d1= daycontroller2.text;
                            updatetime('timer2',h1,m1,d1);
                          },
                          child: Text('SET', style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children:<Widget> [
                      Expanded(
                          flex: 1,
                          child: Text('Box3',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),)),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          controller: hourcontroller3,
                          decoration: InputDecoration(
                              hintText: "Hour"
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          controller: mincontroller3,
                          decoration: InputDecoration(

                              hintText: "Minutes"
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Days"
                          ),
                          controller: daycontroller3,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: FlatButton(
                          color: Colors.blueAccent,
                          onPressed: (){
                            h1= hourcontroller3.text;
                            m1= mincontroller3.text;
                            d1= daycontroller3.text;
                            updatetime('timer3',h1,m1,d1);
                          },
                          child: Text('SET', style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                        ),
                      )
                    ],
                  )
                ]
            )
        )
    );
  }
  void updatetime(String t,String h,String m,String d) {
    int h1,m1,d1;
    //h1=int.parse(h);
    m1=int.parse(m);
    d1=int.parse(d);
    DBref.child(t).update({
      'hour':int.parse(h),
      'min':int.parse(m),
      'day':int.parse(d)
    });
  }
}
