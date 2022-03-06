import 'package:cloud_firestore/cloud_firestore.dart';

class Item {
  Item({
    required this.title,
    required this.body,
    required this.createdAt,
  });
  String title;
  String body;
  Timestamp createdAt;
}

class MyDatabase {
  Future<List<Item>> fetchItems(Item? item) async {
    final itemsCollectionRef = FirebaseFirestore.instance.collection('posts');

    if (item == null) {
      final documentSnapshot = await itemsCollectionRef
          .orderBy("createdAt", descending: true)
          .limit(1000)
          .get();

      return documentSnapshot.docs
          .map<Item>(
            (data) => Item(
              title: data['title'],
              body: data['body'],
              createdAt: data['createdAt'],
            ),
          )
          .toList();
    } else {
      final documentSnapshot = await itemsCollectionRef
          .orderBy("createdAt", descending: true)
          .startAfter([item.createdAt])
          .limit(1000)
          .get();

      return documentSnapshot.docs
          .map<Item>(
            (data) => Item(
              title: data['title'],
              body: data['body'],
              createdAt: data['createdAt'],
            ),
          )
          .toList();
    }
  }
}
