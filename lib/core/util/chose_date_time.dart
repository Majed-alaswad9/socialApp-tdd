class ChoseDateTime {
  String chose(DateTime createdAt) {
    if (DateTime.now().difference(createdAt).inMinutes < 60) {
      return '${DateTime.now().difference(createdAt).inMinutes} minutes ago';
    } else if (DateTime.now().difference(createdAt).inHours < 24) {
      return '${DateTime.now().difference(createdAt).inHours} hours ago';
    } else if (DateTime.now().difference(createdAt).inDays < 7) {
      return '${DateTime.now().difference(createdAt).inDays} days ago';
    } else {
      return '${createdAt.year}-'
          '${createdAt.month}-'
          '${createdAt.day}';
    }
  }
}
