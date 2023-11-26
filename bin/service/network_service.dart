import 'package:http/http.dart';

class Network{

  //https://65606ee083aba11d99d0cb16.mockapi.io/person
  static final String baseUrl = "65606ee083aba11d99d0cb16.mockapi.io";
  static final String api = "/person";

  static Future<String> getdData(String api)async{
    Uri uri= Uri.https(baseUrl, api);
    Response response = await get(uri);
    if(response.statusCode == 200 || response.statusCode == 201){
      return response.body;
    }else{
      return "Wrong ${response.statusCode}";
    }
  }

}


/*
class network_servicwes{

  static final String mockApiBaseUrl = "6560336b83aba11d99d06070.mockapi.io";
  static final String mockApi = "/about_me";

  static Future <String>malumotlarolish(String mockApi)async{
    Uri url = Uri.https(mockApi);
    Response javob = await get(url);

    if(javob.statusCode == 200 || javob.statusCode == 201){
      return javob.body;
    }else{
      return "Xatolik ${javob.statusCode}";
    }

  }

}

class Networkbn_ishlash{

  static final String basekode = "6560336b83aba11d99d06070.mockapi.io";
  static final String baseAPI = "/about_me";

  static Future <String> qwertyui(String baseAPI)async{
    Uri uriii = Uri.https(baseAPI);
    Response resjavob = await get(uriii);

    if(resjavob.statusCode == 200 || resjavob.statusCode == 201){
      return resjavob.body;
    }else{
      return "Xatolik ${resjavob.statusCode}";
    }



  }

}
 */


