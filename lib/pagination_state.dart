import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_state.freezed.dart';

@freezed
abstract class PaginationState<T> with _$PaginationState<T> {
  const factory PaginationState.data(List<T> items) = _Data;
  const factory PaginationState.loading(List<T> items) = _Loading;
  const factory PaginationState.error(Object? e, [StackTrace? stk]) = _Error;
  // const factory PaginationState.onGoingData(List<T> items, bool hasReachedMax) =
  //     _OnGoingData;
  const factory PaginationState.onGoingLoading(List<T> items) = _OnGoingLoading;
  const factory PaginationState.onGoingError(List<T> items, Object? e,
      [StackTrace? stk]) = _OnGoingError;
}
