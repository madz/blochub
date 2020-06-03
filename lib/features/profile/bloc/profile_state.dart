part of 'profile_bloc.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = ProfileStateInitial;
  const factory ProfileState.loading() = ProfileStateLoading;
  const factory ProfileState.loaded() = ProfileStateLoaded;
  const factory ProfileState.error(String error) = ProfileStateError;
}
