import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'snack_bar_state.freezed.dart';

@freezed
class SnackBarState with _$SnackBarState {
  const factory SnackBarState({
    @Default('') String message,
    VoidCallback? action,
  }) = _SnackBarState;
}
