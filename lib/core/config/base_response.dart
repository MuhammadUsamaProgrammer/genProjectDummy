part of '../../wird_book.dart';

@Freezed(genericArgumentFactories: true)
abstract class BaseListModel<T> with _$BaseListModel<T> {
  const factory BaseListModel({
    bool ? isLoadingMore,
    int ? totalCount,
    required bool isSuccess,
    String? message,
    List<T>? data,
  }) = _BaseListModel<T>;

  factory BaseListModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$BaseListModelFromJson(json, fromJsonT);
}

@Freezed(genericArgumentFactories: true)
abstract class BaseModel<T> with _$BaseModel<T> {
  const factory BaseModel({required bool isSuccess, String? message, T? data}) =
      _BaseModel<T>;

  factory BaseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$BaseModelFromJson(json, fromJsonT);
}
