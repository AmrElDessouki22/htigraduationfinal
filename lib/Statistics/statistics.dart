import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:htigraduation/Statistics/statisticshttp.dart';


class statistics extends StatefulWidget {
  @override
  _statisticsState createState() => _statisticsState();
}

class _statisticsState extends State<statistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الاحصائيات',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
      backgroundColor: Color(0xFF263238),
      body: SafeArea(
        child: FutureBuilder(
          future: Getstatistics(),
          // ignore: missing_return
          builder: (context,snp){
            switch (snp.connectionState)
            {

              case ConnectionState.none:
                return Container(child: Text('Loading',style: TextStyle(color: Colors.white),),alignment: Alignment.center,);
              case ConnectionState.waiting:
                return Container(child: Text('Loading',style: TextStyle(color: Colors.white),),alignment: Alignment.center,);
              case ConnectionState.active:
                return Container(child: Text('Loading',style: TextStyle(color: Colors.white),),alignment: Alignment.center,);
              case ConnectionState.done:
                return ListView.builder(
                    itemCount: snp.data.length,
                    itemBuilder: (context,index)
                {
                  return Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xFF324148)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Image(image: snp.data[index]['image_url']==null?NetworkImage('https://aci.aero/wp-content/uploads/2018/06/map-2.png'):NetworkImage(snp.data[index]['image_url'],),height: 50,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(snp.data[index]['name'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                )

                              ],

                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 10),
                            child: Row(

                              children: <Widget>[
                                SizedBox(width: 30,),
                                Expanded(flex:1 ,child: Text('الوفيات',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                Expanded(flex:1 ,child: Text('المتعافين',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                Expanded(flex:1 ,child: Text('الاجمالي',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                              ],
                            ),
                          ),
                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: 10),
                        child: Row(

                          children: <Widget>[
                            SizedBox(width: 30,),
                            Expanded(flex:1 ,child: Text(snp.data[index]['death'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                            Expanded(flex:1 ,child: Text(snp.data[index]['recovered'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                            Expanded(flex:1 ,child: Text(snp.data[index]['total'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                          ],
                        ),
                      ),



                        ],
                      ),
                    ),
                  );
                });
            }
          },
        ),
      ),
    );
  }
}
class Covid {
  Covid(this.month, this.number);

  final String month;
  final double number;
}