class PostModel {
  final String postId;
  final String userId;
  final String userName;
  String? userImage;
  final String content;
  final DateTime date;
  String? image;

  PostModel(this.postId, this.content, this.date, this.image, this.userId,
      this.userName, this.userImage);

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
        json['uId'],
        json['userId'],
        json['userName'],
        json['userImage'] ?? '',
        json['content'],
        json['date'],
        json['image'] ?? '');
  }

  Map<String, dynamic> toJson() {
    return {
      'postId': postId,
      'userId': userId,
      'userName': userName,
      'userImage': userImage,
      'content': content,
      'date': date,
      'image': image,
    };
  }
}
