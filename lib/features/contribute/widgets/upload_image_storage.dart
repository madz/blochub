import 'package:blochub/core/di/injector.dart';
import 'package:blochub/features/contribute/bloc/contribute_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:io';

class UploadImageStorage extends StatelessWidget {
  final _contributeBloc = getIt<ContributeBloc>();

  Future getImage() async {}

  @override
  Widget build(BuildContext context) {
    return BlocListener<ContributeBloc, ContributeState>(
      listener: (context, state) {
        if (state.isFailure) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text('${state.info}'),
                    ),
                    Icon(Icons.error),
                  ],
                ),
                backgroundColor: Colors.red,
              ),
            );
        } else if (state.isUploading) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Uploading Image...'),
                    CircularProgressIndicator(),
                  ],
                ),
              ),
            );
        } else if (state.isSuccess) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Uploading Image Success'),
                  ],
                ),
              ),
            );
        }
      },
      child: BlocBuilder<ContributeBloc, ContributeState>(
        builder: (context, state) {
          return Column(
            children: <Widget>[
              RaisedButton(
                child: state.image == null
                    ? Text('No image selected.')
                    : Image.file(File(state.image.path)),
                onPressed: () {
                  _contributeBloc.add(ContributeEvent.loadImage());
                },
              ),
              RaisedButton(
                child: Text('Upload Image'),
                onPressed: () {
                  _contributeBloc.add(
                    ContributeEvent.uploadImage(
                      state.image,
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
