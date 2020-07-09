import 'package:flutter/material.dart';
import 'package:pinch_zoom_image/pinch_zoom_image.dart';
class calldoctor extends StatefulWidget {
  @override
  _calldoctorState createState() => _calldoctorState();
}

class _calldoctorState extends State<calldoctor> {
  @override
  Widget build(BuildContext context) {
    var arr = ['https://images.unsplash.com/photo-1588683023217-97e48b7da1a2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1949&q=80',
    'https://images.unsplash.com/photo-1582750433449-648ed127bb54?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80'];
    return Scaffold(
      appBar: AppBar(title: Text('العزل المنزلي'),),
      backgroundColor: Color(0xFF263238),
      body: SafeArea(
          child: ListView.builder(
              itemCount: arr.length,
              itemBuilder: (context,index)
              {
                return Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xFF324148)),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xFF324148)),
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Image(image: NetworkImage(arr[index]),height: 200, ),
                            ) ,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xFF324148)),
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Text('name : ahmed khaled sayed',style: TextStyle(color:Colors.white),),
                            ) ,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xFF324148)),
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Text('phone : 012772822',style: TextStyle(color:Colors.white),),
                            ) ,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xFF324148)),
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Text('postion : دكتور الصدر في القصر العني',style: TextStyle(color:Colors.white),),
                            ) ,
                          ),
                        ),

                      ],
                    ),
                  ),
                );
              })
      ),
    );
  }
}
