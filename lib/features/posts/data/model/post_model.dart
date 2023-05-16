class PostModel {
  final String postId;
  final String userId;
  final String userName;
  String? userImage;
  final String content;
  final String createAt;
  String? postImage;
  final bool isLike;
  final int likesCount;

  PostModel(this.postId, this.content, this.createAt, this.postImage,
      this.userId, this.userName, this.userImage, this.isLike, this.likesCount);

  factory PostModel.fromJson(Map<String, dynamic> json, String postId,bool isLike,int likesCount) {
    return PostModel(
        postId,
        json['content'],
        json['createAt'],
        json['postImage'],
        json['userId'],
        json['userName'],
        json['userImage'],
        isLike,
        likesCount);
  }

  factory PostModel.fromLocalJson(Map<dynamic, dynamic> json) {
    return PostModel(
        json['postId'],
        json['content'],
        json['createdAt'],
        json['postImage'],
        json['userId'],
        json['userName'],
        json['userImage'],
        json['isLike'],
        json['likesCount']);
  }

  Map<String, dynamic> toJson() {
    return {
      'postId': postId,
      'userId': userId,
      'userName': userName,
      'userImage': userImage,
      'content': content,
      'createdAt': createAt,
      'postImage': postImage,
      'isLike':isLike,
      'likesCount':likesCount
    };
  }
}
