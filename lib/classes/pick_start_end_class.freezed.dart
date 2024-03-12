// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pick_start_end_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PickStartEndClass {
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;
  SliderMode get sliderMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PickStartEndClassCopyWith<PickStartEndClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickStartEndClassCopyWith<$Res> {
  factory $PickStartEndClassCopyWith(
          PickStartEndClass value, $Res Function(PickStartEndClass) then) =
      _$PickStartEndClassCopyWithImpl<$Res, PickStartEndClass>;
  @useResult
  $Res call({DateTime start, DateTime end, SliderMode sliderMode});
}

/// @nodoc
class _$PickStartEndClassCopyWithImpl<$Res, $Val extends PickStartEndClass>
    implements $PickStartEndClassCopyWith<$Res> {
  _$PickStartEndClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? sliderMode = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sliderMode: null == sliderMode
          ? _value.sliderMode
          : sliderMode // ignore: cast_nullable_to_non_nullable
              as SliderMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PickStartEndClassImplCopyWith<$Res>
    implements $PickStartEndClassCopyWith<$Res> {
  factory _$$PickStartEndClassImplCopyWith(_$PickStartEndClassImpl value,
          $Res Function(_$PickStartEndClassImpl) then) =
      __$$PickStartEndClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime start, DateTime end, SliderMode sliderMode});
}

/// @nodoc
class __$$PickStartEndClassImplCopyWithImpl<$Res>
    extends _$PickStartEndClassCopyWithImpl<$Res, _$PickStartEndClassImpl>
    implements _$$PickStartEndClassImplCopyWith<$Res> {
  __$$PickStartEndClassImplCopyWithImpl(_$PickStartEndClassImpl _value,
      $Res Function(_$PickStartEndClassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? sliderMode = null,
  }) {
    return _then(_$PickStartEndClassImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sliderMode: null == sliderMode
          ? _value.sliderMode
          : sliderMode // ignore: cast_nullable_to_non_nullable
              as SliderMode,
    ));
  }
}

/// @nodoc

class _$PickStartEndClassImpl extends _PickStartEndClass {
  _$PickStartEndClassImpl(
      {required this.start,
      required this.end,
      this.sliderMode = SliderMode.nothing})
      : super._();

  @override
  final DateTime start;
  @override
  final DateTime end;
  @override
  @JsonKey()
  final SliderMode sliderMode;

  @override
  String toString() {
    return 'PickStartEndClass(start: $start, end: $end, sliderMode: $sliderMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickStartEndClassImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.sliderMode, sliderMode) ||
                other.sliderMode == sliderMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, start, end, sliderMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickStartEndClassImplCopyWith<_$PickStartEndClassImpl> get copyWith =>
      __$$PickStartEndClassImplCopyWithImpl<_$PickStartEndClassImpl>(
          this, _$identity);
}

abstract class _PickStartEndClass extends PickStartEndClass {
  factory _PickStartEndClass(
      {required final DateTime start,
      required final DateTime end,
      final SliderMode sliderMode}) = _$PickStartEndClassImpl;
  _PickStartEndClass._() : super._();

  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  SliderMode get sliderMode;
  @override
  @JsonKey(ignore: true)
  _$$PickStartEndClassImplCopyWith<_$PickStartEndClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
