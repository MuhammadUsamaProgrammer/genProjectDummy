// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wird_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaseListModel<T> {

 bool? get isLoadingMore; int? get totalCount; bool get isSuccess; String? get message; List<T>? get data;
/// Create a copy of BaseListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseListModelCopyWith<T, BaseListModel<T>> get copyWith => _$BaseListModelCopyWithImpl<T, BaseListModel<T>>(this as BaseListModel<T>, _$identity);

  /// Serializes this BaseListModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseListModel<T>&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isLoadingMore,totalCount,isSuccess,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BaseListModel<$T>(isLoadingMore: $isLoadingMore, totalCount: $totalCount, isSuccess: $isSuccess, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $BaseListModelCopyWith<T,$Res>  {
  factory $BaseListModelCopyWith(BaseListModel<T> value, $Res Function(BaseListModel<T>) _then) = _$BaseListModelCopyWithImpl;
@useResult
$Res call({
 bool? isLoadingMore, int? totalCount, bool isSuccess, String? message, List<T>? data
});




}
/// @nodoc
class _$BaseListModelCopyWithImpl<T,$Res>
    implements $BaseListModelCopyWith<T, $Res> {
  _$BaseListModelCopyWithImpl(this._self, this._then);

  final BaseListModel<T> _self;
  final $Res Function(BaseListModel<T>) _then;

/// Create a copy of BaseListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoadingMore = freezed,Object? totalCount = freezed,Object? isSuccess = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
isLoadingMore: freezed == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<T>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BaseListModel].
extension BaseListModelPatterns<T> on BaseListModel<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BaseListModel<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BaseListModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BaseListModel<T> value)  $default,){
final _that = this;
switch (_that) {
case _BaseListModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BaseListModel<T> value)?  $default,){
final _that = this;
switch (_that) {
case _BaseListModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? isLoadingMore,  int? totalCount,  bool isSuccess,  String? message,  List<T>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BaseListModel() when $default != null:
return $default(_that.isLoadingMore,_that.totalCount,_that.isSuccess,_that.message,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? isLoadingMore,  int? totalCount,  bool isSuccess,  String? message,  List<T>? data)  $default,) {final _that = this;
switch (_that) {
case _BaseListModel():
return $default(_that.isLoadingMore,_that.totalCount,_that.isSuccess,_that.message,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? isLoadingMore,  int? totalCount,  bool isSuccess,  String? message,  List<T>? data)?  $default,) {final _that = this;
switch (_that) {
case _BaseListModel() when $default != null:
return $default(_that.isLoadingMore,_that.totalCount,_that.isSuccess,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _BaseListModel<T> implements BaseListModel<T> {
  const _BaseListModel({this.isLoadingMore, this.totalCount, required this.isSuccess, this.message, final  List<T>? data}): _data = data;
  factory _BaseListModel.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$BaseListModelFromJson(json,fromJsonT);

@override final  bool? isLoadingMore;
@override final  int? totalCount;
@override final  bool isSuccess;
@override final  String? message;
 final  List<T>? _data;
@override List<T>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BaseListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseListModelCopyWith<T, _BaseListModel<T>> get copyWith => __$BaseListModelCopyWithImpl<T, _BaseListModel<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$BaseListModelToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseListModel<T>&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isLoadingMore,totalCount,isSuccess,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'BaseListModel<$T>(isLoadingMore: $isLoadingMore, totalCount: $totalCount, isSuccess: $isSuccess, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BaseListModelCopyWith<T,$Res> implements $BaseListModelCopyWith<T, $Res> {
  factory _$BaseListModelCopyWith(_BaseListModel<T> value, $Res Function(_BaseListModel<T>) _then) = __$BaseListModelCopyWithImpl;
@override @useResult
$Res call({
 bool? isLoadingMore, int? totalCount, bool isSuccess, String? message, List<T>? data
});




}
/// @nodoc
class __$BaseListModelCopyWithImpl<T,$Res>
    implements _$BaseListModelCopyWith<T, $Res> {
  __$BaseListModelCopyWithImpl(this._self, this._then);

  final _BaseListModel<T> _self;
  final $Res Function(_BaseListModel<T>) _then;

/// Create a copy of BaseListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoadingMore = freezed,Object? totalCount = freezed,Object? isSuccess = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_BaseListModel<T>(
isLoadingMore: freezed == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<T>?,
  ));
}


}


/// @nodoc
mixin _$BaseModel<T> {

 bool get isSuccess; String? get message; T? get data;
/// Create a copy of BaseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseModelCopyWith<T, BaseModel<T>> get copyWith => _$BaseModelCopyWithImpl<T, BaseModel<T>>(this as BaseModel<T>, _$identity);

  /// Serializes this BaseModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseModel<T>&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccess,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BaseModel<$T>(isSuccess: $isSuccess, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $BaseModelCopyWith<T,$Res>  {
  factory $BaseModelCopyWith(BaseModel<T> value, $Res Function(BaseModel<T>) _then) = _$BaseModelCopyWithImpl;
@useResult
$Res call({
 bool isSuccess, String? message, T? data
});




}
/// @nodoc
class _$BaseModelCopyWithImpl<T,$Res>
    implements $BaseModelCopyWith<T, $Res> {
  _$BaseModelCopyWithImpl(this._self, this._then);

  final BaseModel<T> _self;
  final $Res Function(BaseModel<T>) _then;

/// Create a copy of BaseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSuccess = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}

}


/// Adds pattern-matching-related methods to [BaseModel].
extension BaseModelPatterns<T> on BaseModel<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BaseModel<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BaseModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BaseModel<T> value)  $default,){
final _that = this;
switch (_that) {
case _BaseModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BaseModel<T> value)?  $default,){
final _that = this;
switch (_that) {
case _BaseModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isSuccess,  String? message,  T? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BaseModel() when $default != null:
return $default(_that.isSuccess,_that.message,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isSuccess,  String? message,  T? data)  $default,) {final _that = this;
switch (_that) {
case _BaseModel():
return $default(_that.isSuccess,_that.message,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isSuccess,  String? message,  T? data)?  $default,) {final _that = this;
switch (_that) {
case _BaseModel() when $default != null:
return $default(_that.isSuccess,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _BaseModel<T> implements BaseModel<T> {
  const _BaseModel({required this.isSuccess, this.message, this.data});
  factory _BaseModel.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$BaseModelFromJson(json,fromJsonT);

@override final  bool isSuccess;
@override final  String? message;
@override final  T? data;

/// Create a copy of BaseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseModelCopyWith<T, _BaseModel<T>> get copyWith => __$BaseModelCopyWithImpl<T, _BaseModel<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$BaseModelToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseModel<T>&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccess,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BaseModel<$T>(isSuccess: $isSuccess, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BaseModelCopyWith<T,$Res> implements $BaseModelCopyWith<T, $Res> {
  factory _$BaseModelCopyWith(_BaseModel<T> value, $Res Function(_BaseModel<T>) _then) = __$BaseModelCopyWithImpl;
@override @useResult
$Res call({
 bool isSuccess, String? message, T? data
});




}
/// @nodoc
class __$BaseModelCopyWithImpl<T,$Res>
    implements _$BaseModelCopyWith<T, $Res> {
  __$BaseModelCopyWithImpl(this._self, this._then);

  final _BaseModel<T> _self;
  final $Res Function(_BaseModel<T>) _then;

/// Create a copy of BaseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSuccess = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_BaseModel<T>(
isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc
mixin _$AppLoadingState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppLoadingState()';
}


}

/// @nodoc
class $AppLoadingStateCopyWith<$Res>  {
$AppLoadingStateCopyWith(AppLoadingState _, $Res Function(AppLoadingState) __);
}


/// Adds pattern-matching-related methods to [AppLoadingState].
extension AppLoadingStatePatterns on AppLoadingState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _initialized value)?  $default,{TResult Function( LoadingState value)?  loading,TResult Function( ErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _initialized() when $default != null:
return $default(_that);case LoadingState() when loading != null:
return loading(_that);case ErrorState() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _initialized value)  $default,{required TResult Function( LoadingState value)  loading,required TResult Function( ErrorState value)  error,}){
final _that = this;
switch (_that) {
case _initialized():
return $default(_that);case LoadingState():
return loading(_that);case ErrorState():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _initialized value)?  $default,{TResult? Function( LoadingState value)?  loading,TResult? Function( ErrorState value)?  error,}){
final _that = this;
switch (_that) {
case _initialized() when $default != null:
return $default(_that);case LoadingState() when loading != null:
return loading(_that);case ErrorState() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function()?  $default,{TResult Function()?  loading,TResult Function()?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _initialized() when $default != null:
return $default();case LoadingState() when loading != null:
return loading();case ErrorState() when error != null:
return error();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function()  $default,{required TResult Function()  loading,required TResult Function()  error,}) {final _that = this;
switch (_that) {
case _initialized():
return $default();case LoadingState():
return loading();case ErrorState():
return error();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function()?  $default,{TResult? Function()?  loading,TResult? Function()?  error,}) {final _that = this;
switch (_that) {
case _initialized() when $default != null:
return $default();case LoadingState() when loading != null:
return loading();case ErrorState() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class _initialized implements AppLoadingState {
  const _initialized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _initialized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppLoadingState()';
}


}




/// @nodoc


class LoadingState implements AppLoadingState {
  const LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppLoadingState.loading()';
}


}




/// @nodoc


class ErrorState implements AppLoadingState {
  const ErrorState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppLoadingState.error()';
}


}




// dart format on
