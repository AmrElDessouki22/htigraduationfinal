import 'package:flutter/material.dart';
import 'package:pinch_zoom_image/pinch_zoom_image.dart';

class instruction extends StatefulWidget {
  @override
  _instructionState createState() => _instructionState();
}

class _instructionState extends State<instruction> {

  @override
  Widget build(BuildContext context) {
    var arr =['https://govextra.gov.il/media/12674/14-days_ar.jpg','https://img.youm7.com/ArticleImgs/2020/3/28/94391-91102202_144655637085057_3726684019694239744_n.jpg','https://i0.wp.com/sadasour.net/wp-content/uploads/2020/03/9f28608f-7449-45cb-a6b8-0c2877606f79.jpg?resize=618%2C874&ssl=1'];
    return Scaffold(
      appBar: AppBar(title: Text('نصائح'),),
      backgroundColor: Color(0xFF263238),
      body: SafeArea(
        child: ListView.builder(
            itemCount: arr.length,
            itemBuilder: (context,index)
        {
          return Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xFF324148)),
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: PinchZoomImage(
                      image: Image.network(arr[index])
                      ,zoomedBackgroundColor: Color.fromRGBO(240, 240, 240, 1.0),
                      hideStatusBarWhileZooming: true,),
                  ) ,
                ),
              ),

            ],
          );
        })
        ),
      );

  }
}
