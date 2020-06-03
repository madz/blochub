part of 'contribute_bloc.dart';

@freezed
abstract class ContributeEvent with _$ContributeEvent {
  const factory ContributeEvent.loadImage() = ContributeEventLoadImage;
  const factory ContributeEvent.uploadImage(PickedFile image) =
      ContributeEventUploadImage;
  const factory ContributeEvent.publish() = ContributeEventPublish;
}
