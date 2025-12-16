
import 'package:freezed_annotation/freezed_annotation.dart';
part 'model_state.freezed.dart';
@freezed
class ModelState<T> with _$ModelState<T> {
  const factory ModelState.initial() = _Initial;
  const factory ModelState.loading() = _Loading;
  const factory ModelState.success({required T data}) = _Success<T>;
  const factory ModelState.error({required String message}) = _Error;
}
