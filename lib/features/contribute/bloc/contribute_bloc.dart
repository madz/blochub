import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'contribute_bloc.freezed.dart';
part 'contribute_event.dart';
part 'contribute_state.dart';

@lazySingleton
class ContributeBloc extends Bloc<ContributeEvent, ContributeState> {
  final FirebaseStorage firebaseStorage;
  final Uuid uuid;

  ContributeBloc({
    @required this.firebaseStorage,
    @required this.uuid,
  });

  @override
  ContributeState get initialState => ContributeState.empty();

  @override
  Stream<ContributeState> mapEventToState(
    ContributeEvent event,
  ) async* {
    yield* event.map(
      loadImage: (ContributeEventLoadImage e) async* {
        final _picker = ImagePicker();
        final image = await _picker.getImage(source: ImageSource.gallery);
        yield ContributeState.loadingImage(image);
      },
      uploadImage: (ContributeEventUploadImage e) async* {
        yield ContributeState.uploadingImage();
        try {
          final StorageReference storageReference =
              firebaseStorage.ref().child(uuid.v4());

          final fileData = await e.image.readAsBytes();

          storageReference.putData(
              fileData, StorageMetadata(contentType: 'image/jpeg'));
          yield ContributeState.success(info: 'Upload Image success!');
        } on PlatformException catch (e) {
          yield ContributeState.failure(info: e.message);
        }
      },
      publish: (ContributeEventPublish e) async* {},
    );
  }
}
