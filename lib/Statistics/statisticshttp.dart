import 'dart:convert';
import 'package:http/http.dart' as http;

Future Getstatistics() async
{
  var url = 'http://192.168.1.17:3000'+'/statistics';
  Map<String,String> headers = {"content-type": "application/json"};
  var response = await http.get(url,headers: headers );
  var listy = json.decode(response.body);
  return listy ;
}