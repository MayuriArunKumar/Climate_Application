import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper{
  final String url;

  NetworkHelper(this.url);

  Future getData()async{
    http.Response response=await http.get(Uri.parse('$url'));  
    print(response);
  if(response.statusCode==200){
    String data=response.body;
    return jsonDecode(data);
    
   } else if(response.statusCode==404){
    return response.statusCode;
   }else{
    print(response.statusCode);
  }
  }  
}

