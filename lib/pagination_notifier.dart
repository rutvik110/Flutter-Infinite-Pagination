import 'dart:async';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_pagination/pagination_state.dart';

class PaginationNotifier<T> extends StateNotifier<PaginationState<T>> {
  PaginationNotifier({
    required this.fetchNextItems,
    required this.hitsPerPage,
  }) : super(const PaginationState.loading([]));

  final Future<List<T>> Function(T? item, int offset) fetchNextItems;
  final int hitsPerPage;

  final List<T> _items = [];

  Timer _timer = Timer(const Duration(milliseconds: 0), () {});

  bool noMoreItems = false;

  void init() {
    if (_items.isEmpty) {
      // _timer.cancel();
      fetchFirstPage(true);
    }
  }

  void updateData(List<T> result) {
    noMoreItems = result.length < hitsPerPage;

    if (result.isEmpty) {
      state = PaginationState.data(_items);
    } else {
      state = PaginationState.data(_items..addAll(result));
    }
  }

  Future<void> fetchFirstPage(bool clearCurrentList) async {
    try {
      state = PaginationState.loading(_items);

      final List<T> result = _items.isEmpty || clearCurrentList
          ? await fetchNextItems(
              null,
              0,
            )
          : await fetchNextItems(_items.last, _items.length);
      if (clearCurrentList) {
        _items.clear();
      }
      updateData(result);
    } catch (e, stk) {
      state = PaginationState.error(e, stk);
    }
  }

  Future<void> fetchNextPage({
    bool clearCurrentList = false,
  }) async {
    if (_timer.isActive && _items.isNotEmpty) {
      return;
    }
    _timer = Timer(const Duration(milliseconds: 1000), () {});

    if (noMoreItems) {
      return;
    }

    if (state == PaginationState<T>.onGoingLoading(_items)) {
      log("Rejected");
      return;
    }

    log("Passed");

    state = PaginationState.onGoingLoading(_items);

    try {
      await Future.delayed(const Duration(seconds: 10));
      final result = await fetchNextItems(_items.last, _items.length);
      updateData(result);
    } catch (e, stk) {
      log("Error fetching next page", error: e, stackTrace: stk);
      state = PaginationState.onGoingError(_items, e, stk);
    }
  }
}
