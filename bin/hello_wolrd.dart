import 'package:http/http.dart';
import 'package:test/expect.dart';

void main ()async{
      // Task 4 SHOPPING

  const String baseUrl = "65602f9583aba11d99d05b76.mockapi.io";
  const String api = "/Shopping";

String response = await getdData(baseUrl, api);
print(response);
print("\n*************************************************\n");

Stream<String> nom = getinfo(baseUrl, api);

nom.listen((event) {
  print(event);
},
onError: (e)=>print(e),
  cancelOnError: false,
  onDone: ()=>print("tugadi")

);
}

Stream<String> getinfo(String baseUrl, String api)async*{
  Uri uri= Uri.https(baseUrl, api);
  Response response = await get(uri);
  Future.delayed(Duration(seconds: 2));
  yield response.body.trim();
}


Future<String> getdData(String baseUrl, String api)async{
 Uri uri= Uri.https(baseUrl, api);
Response response = await get(uri);
Future.delayed(Duration(seconds: 2));
  return response.body;
}