import 'package:flutter/material.dart';
import 'package:htigraduation/News/Newshttp.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الاخبار'),
      ),
      backgroundColor: Color(0xFF263238),
      body: SafeArea(
        child: FutureBuilder(
          future: Getnews(),
          // ignore: missing_return
          builder: (context,snp){
            switch (snp.connectionState)
            {

              case ConnectionState.none:
                return Container(child: Text('Loading',style: TextStyle(color: Colors.white),),);
              case ConnectionState.waiting:
                return Container(child: Text('Loading',style: TextStyle(color: Colors.white),),);
              case ConnectionState.active:
                return Container(child: Text('Loading',style: TextStyle(color: Colors.white),),);
              case ConnectionState.done:
                return ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: snp.data.length,
                    itemBuilder: (context,index)
                    {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xFF324148)),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                      child: Image.network(snp.data[index]['image_link'],height: 70,),
                                    )
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Text(snp.data[index]['title'],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(snp.data[index]['description'],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),maxLines: 2,),
                            
                          )
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
