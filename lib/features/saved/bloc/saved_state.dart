import 'package:equatable/equatable.dart';

/// state for saved screen
abstract class SavedState extends Equatable {
  ///create a saved state.
  const SavedState();

  @override
  List<Object> get props => [];
}

///initial saved state
class InitialSavedState extends SavedState {
  @override
  List<Object> get props => [];
}
