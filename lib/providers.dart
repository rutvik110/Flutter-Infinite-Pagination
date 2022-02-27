import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_pagination/database.dart';
import 'package:infinite_pagination/pagination_notifier.dart';
import 'package:infinite_pagination/pagination_state.dart';

final itemsProvider =
    StateNotifierProvider<PaginationNotifier<Item>, PaginationState<Item>>(
        (ref) {
  return PaginationNotifier(
    hitsPerPage: 20,
    fetchNextItems: (
      chase,
      offset,
    ) {
      return ref.read(databaseProvider).fetchItems(chase, offset);
    },
  )..init();
});

final databaseProvider = Provider<MyDatabase>((ref) => MyDatabase());
