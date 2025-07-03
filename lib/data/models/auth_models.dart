class AuthModels{

  final String id;
  final String name;
  final String email;
  final String password;


  //==================Constructor function ===================
  AuthModels({
    required this.id,
    required this.name,
    required this.email,
    required this.password
  });


  //===================== Factory Constructor ===========
  factory AuthModels.fromJson(json){
    return AuthModels(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        password: json["password"]
    );
  }

  //------------------Json to Map<String,dynamic> ------------
  Map<String,dynamic> toJson()=>{
    "id":id,
    "name": name,
    "email":email,
    "password": password
  };


}