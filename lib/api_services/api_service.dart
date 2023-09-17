import 'dart:convert';
import 'package:flutter/services.dart' as root_bundle;

class apiService{
Future Getdata(String path)async{
final jsondata=await root_bundle.rootBundle.loadString(path);
final list=jsonDecode(jsondata);
return list;
}
}