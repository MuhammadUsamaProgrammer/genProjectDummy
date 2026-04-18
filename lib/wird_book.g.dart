// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wird_book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseListModel<T> _$BaseListModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _BaseListModel<T>(
  isLoadingMore: json['isLoadingMore'] as bool?,
  totalCount: (json['totalCount'] as num?)?.toInt(),
  isSuccess: json['isSuccess'] as bool,
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
);

Map<String, dynamic> _$BaseListModelToJson<T>(
  _BaseListModel<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'isLoadingMore': instance.isLoadingMore,
  'totalCount': instance.totalCount,
  'isSuccess': instance.isSuccess,
  'message': instance.message,
  'data': instance.data?.map(toJsonT).toList(),
};

_BaseModel<T> _$BaseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _BaseModel<T>(
  isSuccess: json['isSuccess'] as bool,
  message: json['message'] as String?,
  data: _$nullableGenericFromJson(json['data'], fromJsonT),
);

Map<String, dynamic> _$BaseModelToJson<T>(
  _BaseModel<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'message': instance.message,
  'data': _$nullableGenericToJson(instance.data, toJsonT),
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);
