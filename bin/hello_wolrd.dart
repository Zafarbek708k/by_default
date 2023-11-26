import 'model/users.dart';
import 'service/network_service.dart';

void main()async{

  String response  = await Network.getdData(Network.api);
  List<User> list = usersFromData(response);
  list.forEach((element) {

    print(element.address.zipCode);

    print("** ** ** **");

  });

}
