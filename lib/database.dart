import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  Post({
    required this.title,
    required this.body,
    required this.createdAt,
  });
  String title;
  String body;
  Timestamp createdAt;
}

class MyDatabase {
  Future<List<Post>> streamPosts(
    Post? chase,
    int offset,
  ) async {
    final postsCollectionRef = FirebaseFirestore.instance.collection('posts');
    if (chase == null) {
      final documentSnapshot = await postsCollectionRef
          .orderBy("createdAt", descending: true)
          .limit(20)
          .get();
      return documentSnapshot.docs
          .map<Post>((data) => Post(
              title: data['title'],
              body: data['body'],
              createdAt: data['createdAt']),)
          .toList();
    } else {
      final documentSnapshot = await postsCollectionRef
          .orderBy("createdAt", descending: true)
          .startAfter([chase.createdAt])
          .limit(20)
          .get();
      return documentSnapshot.docs
          .map<Post>((data) => Post(
              title: data['title'],
              body: data['body'],
              createdAt: data['createdAt']))
          .toList();
    }
  }
}
