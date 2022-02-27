import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_pagination/database.dart';
import 'package:infinite_pagination/pagination_notifier.dart';
import 'package:infinite_pagination/pagination_state.dart';

final postsPaginatedStreamProvider =
    StateNotifierProvider<PaginationNotifier<Post>, PaginationState<Post>>(
        (ref) {
  return PaginationNotifier(
      hitsPerPage: 20,
      fetchNextItems: (
        chase,
        offset,
      ) {
        return ref.read(databaseProvider).streamPosts(chase, offset);
      })
    ..init();
});

final databaseProvider = Provider<MyDatabase>((ref) => MyDatabase());
