import 'package:flutter/material.dart';
import 'package:htigraduation/Hospitals/Hospitalhttp.dart';
class Hospital extends StatefulWidget {
  @override
  _HospitalState createState() => _HospitalState();
}

class _HospitalState extends State<Hospital> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text('المستشفيات',style: TextStyle(color: Colors.white),),),
      backgroundColor: Color(0xFF263238),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: FutureBuilder(
            future: Getnearhospitals(),
            // ignore: missing_return
            builder: (context,snp)
            {
              switch (snp.connectionState)
              {

                case ConnectionState.none:
                  return Container(child: Text('loading',style: TextStyle(color: Colors.white),),alignment: Alignment.center,);
                case ConnectionState.waiting:
                  return Container(child: Text('loading',style: TextStyle(color: Colors.white)),alignment: Alignment.center,);
                case ConnectionState.active:
                  return Container(child: Text('loading',style: TextStyle(color: Colors.white)),alignment: Alignment.center,);
                case ConnectionState.done:
                  return ListView.builder(

                      scrollDirection: Axis.vertical,
                      itemCount: snp.data.length,
                      itemBuilder: (context,index)
                      {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(color: Color(0xFF324148),borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Image(height: 100,image: snp.data[index]['image_url']==null?AssetImage('images/hospitallogo.png'):NetworkImage(snp.data[index]['image_url']),),
                                ),
                               Column(
                                 children: <Widget>[
                                   Text(snp.data[index]['name'],style: TextStyle(color: Colors.white),),
                                   Text(snp.data[index]['distance']['distance']+' KM',style: TextStyle(color: Colors.white)),
                                 ],
                               )

                              ],
                            ),
                          ),
                        );
                      }
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}
