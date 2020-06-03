part of 'contribute_bloc.dart';

@freezed
abstract class ContributeState implements _$ContributeState {
  const ContributeState._();

  const factory ContributeState({
    @nullable PickedFile image,
    @required bool isUploading,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = Contribute;

  factory ContributeState.empty() => ContributeState(
        image: null,
        isUploading: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory ContributeState.loadingImage(PickedFile image) => ContributeState(
        image: image,
        isUploading: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory ContributeState.uploadingImage() => ContributeState(
        image: null,
        isUploading: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory ContributeState.failure({@required String info}) => ContributeState(
        image: null,
        isUploading: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory ContributeState.success({@required String info}) => ContributeState(
        image: null,
        isUploading: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );

  factory ContributeState.update({
    PickedFile image,
    bool isUploading,
  }) {
    return ContributeState(
      image: image,
      isUploading: isUploading,
      isSuccess: false,
      isFailure: false,
      info: '',
    );
  }
}
