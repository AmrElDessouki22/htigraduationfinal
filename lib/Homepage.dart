import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:htigraduation/Hospitals/Hospitals.dart';
import 'package:htigraduation/News/News.dart';
import 'package:htigraduation/Statistics/statistics.dart';
import 'package:htigraduation/calldoctor/calldoctor.dart';
import 'package:htigraduation/instruction/instruction.dart';
import 'package:htigraduation/worldcase/worldcase.dart';
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD7D6D6),
      body: SafeArea(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 8,
          // ignore: missing_return
          itemBuilder: (context,index){
            if(index==0)
              {
                return Container(

                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Color(0xFF263238),borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 10,),
                      //Text('Covid-19',style:TextStyle(color:Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
                      SizedBox(height: 10,),
                      Container(
                          decoration: BoxDecoration(color: Color(0xFFE90000),borderRadius: BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: <Widget>[
                                Text('معظم دول العالم في المنطقة الحمراء',style:TextStyle(color:Colors.white,fontSize: 22,fontWeight: FontWeight.bold)),
                                Text('هذا يعني ابقي في منزلك',style:TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold))
                              ],
                            ),
                          )
                      ),
                      Image(image:AssetImage('images/showfirst.png'),height: 230,)
                    ],
                  ),
                );
              }else if (index==1)
                {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14,horizontal: 8),
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      decoration: BoxDecoration(color:Color(0xFF263238),borderRadius: BorderRadius.all(Radius.circular(10)) ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image(image: NetworkImage('https://aci.aero/wp-content/uploads/2018/06/map-2.png'),width: 60,),
                            Text('الحالات علي مستوي العالم',style: TextStyle(fontSize: 19,color: Colors.white,fontWeight: FontWeight.bold),),

                          ],
                        ),
                      ),
                    ),
                  );
                }else if(index==2)
                  {
                    return FutureWorldCase();
                  }
              else if(index==3){
                  return Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xFF263238)),
                                width: double.infinity,
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Hospital()));

                                  },
                                  child: Column
                                    (
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Image(image:AssetImage('images/hospital.png'),height: 100,),
                                      Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Text('المستشفيات',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>News()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xFF263238)),

                                  child: Column
                                    (
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Image(image:AssetImage('images/news.png'),height: 100,),
                                      Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Text('الاخبار',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>instruction()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xFF263238)),
                                  width: double.infinity,
                                  child: Column
                                    (
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Image(image:AssetImage('images/instruction.png'),height: 100,),
                                      Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Text('نصائح',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>statistics()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xFF263238)),

                                  child: Column
                                    (
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Image(image:AssetImage('images/statistics.png'),height: 100,),
                                      Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Text('الاحصائيات',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>calldoctor()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xFF263238)),
                                  width: double.infinity,
                                  child: Column
                                    (
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Image(image:AssetImage('images/calldoctor.png'),height: 100,),
                                      Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Text('دكتور عزل المنزلي',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      )
                    ],
                  );
              }



          },

        )
      ),

    );
  }
}


