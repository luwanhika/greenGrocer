class UserModel {
  String? id;
  String? name;
  String? email;
  String? cellphone;
  String? cpf;
  String? password;
  String? token;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.cellphone,
    this.cpf,
    this.password,
    this.token,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      name: map['fullname'],
      email: map['email'],
      cellphone: map['phone'],
      cpf: map['cpf'],
      password: map['password'],
      token: map['token'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fullname': name,
      'email': email,
      'phone': cellphone,
      'cpf': cpf,
      'password': password,
      'token': token, 
    };
  }

  @override
  String toString() {
    return 'fullname: $name | cpf: $cpf';
  }
}
