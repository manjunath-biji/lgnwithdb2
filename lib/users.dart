class Users{
  String _uname, _password;
  String _firstname;
  String _lastname;
  String _email;
  String _phonenumber;
  String _addlineone;
  String _addlinetwo;
  String _addlinethree;
  String _locality;
  String _city;
  String _pincode;
  String _state;
  String _country;
  String _govtidtype;
  String _govtid;

  String get uname => _uname;

  set uname(String value) {
    _uname = value;
  }

  int isprocessed=0;
  String createdby="ask";
  String updatedby="ask";
  String createtime="2020-03-07T12:20:16.307+0000";
  String updatetime="2020-03-07T12:20:16.307+0000";
  String approvalstatus="i_am_a_user";
  String approvalcomments="i_user";

  Map mapToJson(){
    return { "createdBy": createdby,
      "updatedBy": updatedby,
      "createTime": createtime,
      "updateTime": updatetime,
      "firstName": _firstname,
      "lastName": _lastname,
      "email": _email,
      "userName": _uname,
      "password": _password,
      "phoneNumber": int.parse(_phonenumber),
      "addLineOne": _addlineone,
      "addLineTwo": _addlinetwo,
      "addLineThree": _addlinethree,
      "locality": _locality,
      "city": _city,
      "pinCode": int.parse(_pincode),
      "state": _state,
      "country": _country,
      "govtIdType": _govtidtype,
      "govtId": _govtid,
      "isProcessed": 0,
      "id": null,
      "approvalStatus": null,
      "approvalComments": null
    };}

  get password => _password;

  set password(value) {
    _password = value;
  }

  String get firstname => _firstname;

  set firstname(String value) {
    _firstname = value;
  }

  String get lastname => _lastname;

  set lastname(String value) {
    _lastname = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get phonenumber => _phonenumber;

  set phonenumber(String value) {
    _phonenumber = value;
  }

  String get addlineone => _addlineone;

  set addlineone(String value) {
    _addlineone = value;
  }

  String get addlinetwo => _addlinetwo;

  set addlinetwo(String value) {
    _addlinetwo = value;
  }

  String get addlinethree => _addlinethree;

  set addlinethree(String value) {
    _addlinethree = value;
  }

  String get locality => _locality;

  set locality(String value) {
    _locality = value;
  }

  String get city => _city;

  set city(String value) {
    _city = value;
  }

  String get pincode => _pincode;

  set pincode(String value) {
    _pincode = value;
  }

  String get state => _state;

  set state(String value) {
    _state = value;
  }

  String get country => _country;

  set country(String value) {
    _country = value;
  }

  String get govtidtype => _govtidtype;

  set govtidtype(String value) {
    _govtidtype = value;
  }

  String get govtid => _govtid;

  set govtid(String value) {
    _govtid = value;
  }

}