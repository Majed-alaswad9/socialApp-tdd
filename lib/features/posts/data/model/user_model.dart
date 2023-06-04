class UserModel {
  final String uId;
  final String userName;
  final String email;
  String? profileImage;

  UserModel(
      {required this.uId,
      required this.userName,
      required this.email,
      this.profileImage});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        uId: json['uId'],
        userName: json['userName'],
        email: json['email'],
        profileImage: json['profileImage']);
  }

  Map<String, dynamic> toJson() {
    return {
      'uId': uId,
      'userName': userName,
      'email': email,
      'profileImage': profileImage
    };
  }
}
