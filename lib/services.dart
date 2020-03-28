import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;



class RestAPIServices{
  //final _baseUrl = 'http://10.0.2.2:8081';
  final _baseUrl = 'http://192.168.225.56:8080';
  http.Client _client = http.Client();

  set client(http.Client value) => _client = value;

  static final RestAPIServices _internal = RestAPIServices.internal();
  factory RestAPIServices() => _internal;
  RestAPIServices.internal();
  Future registerUser(String s) async {
    var response = await _client.put('$_baseUrl/submitnewuserrequest', headers: {"Content-Type": "application/json"}, body: s);
    if (response.statusCode == 200) {
      print("connection Successful");
    }
    else{
      print("Error in connection");
    }
  }

/*Future<List<Userdetail>> getUserDetails(String userType) async {
    String requestBody = "";
    if (userType == "SuperAdmin" ) {
      requestBody = '{"userType":"SuperAdmin"}';
      //requestBody = '{"updatedby":"Manjunath"}';
    }
    else if (userType == "All" ) {
      requestBody = '{"city":"pune"}';
    }
    print(requestBody);

    var response = await _client.put('$_baseUrl/getuserrequests', headers: {"Content-Type": "application/json"}, body: requestBody);

    if (response.statusCode == 200) {
      //print(response.body);
      List<dynamic> userdetailsData = json.decode(response.body);
      //print(userdetailsData);
      List<Userdetail> userdetails = userdetailsData.map((userdetailsData) => Userdetail.fromMap(userdetailsData)).toList();
      print(userdetails);
      //print(userdetails);

      return userdetails;

    } else {
      throw Exception('Failed to get data');
    }
  }

  Future<List<Userdetail>> getDummyUserDetails() async {
    var response = await _client.get('$_baseUrl/getdummyuserrequest', headers: {"Content-Type": "application/json"});

    if (response.statusCode == 200) {
      //print(response.body);
      List<dynamic> userdetailsData = json.decode(response.body);
      //print(userdetailsData);
      List<Userdetail> userdetails = userdetailsData.map((userdetailsData) => Userdetail.fromMap(userdetailsData)).toList();
      return userdetails;
    } else {
      throw Exception('Failed to get data');
    }
  }

  Future<List<Userdetail>> getUserDetailsFromJson() async {
    var userDetailsJson = await rootBundle.loadString(userdetailsJsonPath);
    List<dynamic> userdetailsData = json.decode(userDetailsJson) as List;
    List<Userdetail> userdetails = userdetailsData.map((userdetailsData) => Userdetail.fromMap(userdetailsData)).toList();

    return userdetails;
  */
}

