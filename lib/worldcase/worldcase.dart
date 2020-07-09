import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:htigraduation/worldcase/WorldCases.dart';
class FutureWorldCase extends StatelessWidget {
  const FutureWorldCase();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: GetUserInfo(),
      // ignore: missing_return
      builder: (context,snp){
        switch (snp.connectionState)
        {
          case ConnectionState.none:
            return Container(child: Text('Loading'),alignment: Alignment.center,);
          case ConnectionState.waiting:
            return Container(child: Text('Loading'),alignment: Alignment.center,);
          case ConnectionState.active:
            return Container(child: Text('Loading'),alignment: Alignment.center,);
          case ConnectionState.done:
           return  Container(
             width: double.infinity,
             height: 100,
             child: ListView.builder(
                 itemCount: 3,
                 scrollDirection: Axis.horizontal,
                 // ignore: missing_return
                 itemBuilder: (context , index)
             {
                if(index == 0)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 100,
                        decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('الوفيات',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
                            Text(snp.data['death'].toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),)
                          ],
                        ),
                      ),
                    );
                  }
                if(index == 1)
                {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('المتعافيين',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)),
                          Text(snp.data['recovered'].toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green),)
                        ],
                      ),
                    ),
                  );
                }
                if(index == 2)
                {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('اجمالي المصابيين',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)),
                          Text(snp.data['total'].toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  );
                }
             }),
           );
           
        }

      },
    );
  }
}