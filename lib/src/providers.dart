import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_pagination/src/database.dart';
import 'package:infinite_pagination/src/pagination_notifier.dart';
import 'package:infinite_pagination/src/pagination_state/pagination_state.dart';

final itemsProvider =
    StateNotifierProvider<PaginationNotifier<Item>, PaginationState<Item>>(
        (ref) {
  return PaginationNotifier(
    itemsPerBatch: 20,
    fetchNextItems: (
      item,
    ) {
      return ref.read(databaseProvider).fetchItems(item);
    },
  )..init();
});

final databaseProvider = Provider<MyDatabase>((ref) => MyDatabase());
