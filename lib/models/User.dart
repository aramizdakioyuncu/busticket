// ignore_for_file: camel_case_types, file_names

class user {
  final String id;
  final String username;
  final String email;
  final String password; // Güvenlik nedeniyle şifre hashlenmiş olmalıdır.

  user({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
  });

  factory user.fromJson(Map<String, dynamic> json) {
    return user(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'password': password,
    };
  }
}
