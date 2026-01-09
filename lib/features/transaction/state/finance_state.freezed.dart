// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FinanceState {

 bool get isLoading; List<Transaction> get transactions; List<Currency> get currencies;
/// Create a copy of FinanceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinanceStateCopyWith<FinanceState> get copyWith => _$FinanceStateCopyWithImpl<FinanceState>(this as FinanceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinanceState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.transactions, transactions)&&const DeepCollectionEquality().equals(other.currencies, currencies));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(transactions),const DeepCollectionEquality().hash(currencies));

@override
String toString() {
  return 'FinanceState(isLoading: $isLoading, transactions: $transactions, currencies: $currencies)';
}


}

/// @nodoc
abstract mixin class $FinanceStateCopyWith<$Res>  {
  factory $FinanceStateCopyWith(FinanceState value, $Res Function(FinanceState) _then) = _$FinanceStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<Transaction> transactions, List<Currency> currencies
});




}
/// @nodoc
class _$FinanceStateCopyWithImpl<$Res>
    implements $FinanceStateCopyWith<$Res> {
  _$FinanceStateCopyWithImpl(this._self, this._then);

  final FinanceState _self;
  final $Res Function(FinanceState) _then;

/// Create a copy of FinanceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? transactions = null,Object? currencies = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,transactions: null == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,currencies: null == currencies ? _self.currencies : currencies // ignore: cast_nullable_to_non_nullable
as List<Currency>,
  ));
}

}


/// Adds pattern-matching-related methods to [FinanceState].
extension FinanceStatePatterns on FinanceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinanceState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinanceState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinanceState value)  $default,){
final _that = this;
switch (_that) {
case _FinanceState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinanceState value)?  $default,){
final _that = this;
switch (_that) {
case _FinanceState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<Transaction> transactions,  List<Currency> currencies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinanceState() when $default != null:
return $default(_that.isLoading,_that.transactions,_that.currencies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<Transaction> transactions,  List<Currency> currencies)  $default,) {final _that = this;
switch (_that) {
case _FinanceState():
return $default(_that.isLoading,_that.transactions,_that.currencies);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<Transaction> transactions,  List<Currency> currencies)?  $default,) {final _that = this;
switch (_that) {
case _FinanceState() when $default != null:
return $default(_that.isLoading,_that.transactions,_that.currencies);case _:
  return null;

}
}

}

/// @nodoc


class _FinanceState implements FinanceState {
  const _FinanceState({this.isLoading = false, final  List<Transaction> transactions = const [], final  List<Currency> currencies = const []}): _transactions = transactions,_currencies = currencies;
  

@override@JsonKey() final  bool isLoading;
 final  List<Transaction> _transactions;
@override@JsonKey() List<Transaction> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}

 final  List<Currency> _currencies;
@override@JsonKey() List<Currency> get currencies {
  if (_currencies is EqualUnmodifiableListView) return _currencies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currencies);
}


/// Create a copy of FinanceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinanceStateCopyWith<_FinanceState> get copyWith => __$FinanceStateCopyWithImpl<_FinanceState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinanceState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._transactions, _transactions)&&const DeepCollectionEquality().equals(other._currencies, _currencies));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_transactions),const DeepCollectionEquality().hash(_currencies));

@override
String toString() {
  return 'FinanceState(isLoading: $isLoading, transactions: $transactions, currencies: $currencies)';
}


}

/// @nodoc
abstract mixin class _$FinanceStateCopyWith<$Res> implements $FinanceStateCopyWith<$Res> {
  factory _$FinanceStateCopyWith(_FinanceState value, $Res Function(_FinanceState) _then) = __$FinanceStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<Transaction> transactions, List<Currency> currencies
});




}
/// @nodoc
class __$FinanceStateCopyWithImpl<$Res>
    implements _$FinanceStateCopyWith<$Res> {
  __$FinanceStateCopyWithImpl(this._self, this._then);

  final _FinanceState _self;
  final $Res Function(_FinanceState) _then;

/// Create a copy of FinanceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? transactions = null,Object? currencies = null,}) {
  return _then(_FinanceState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,currencies: null == currencies ? _self._currencies : currencies // ignore: cast_nullable_to_non_nullable
as List<Currency>,
  ));
}


}

// dart format on
