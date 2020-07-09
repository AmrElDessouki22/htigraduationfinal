import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
Future<Position> postion()  {
  return  Geolocator()
      .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
}
Future Getnearhospitals() async
{
  Position position = await postion();
  var url = 'http://192.168.1.17:3000'+'/getnearbyhospital';
  Map<String,String> headers = {"content-type": "application/json"};
  Map<String, String> mylocation = {"lon":position.longitude.toString(),"lat":position.latitude.toString()};
  var response = await http.post(url,body: JsonEncoder().convert(mylocation),headers: headers );
  var listy = json.decode(response.body);
  return listy ;
}