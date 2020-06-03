import 'package:blochub/features/contribute/widgets/upload_image_storage.dart';
import 'package:flutter/material.dart';

///Contribute screen
class ContributeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35.0),
        child: AppBar(
          backgroundColor: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Contribute Screen'),
            UploadImageStorage(),
          ],
        ),
      ),
    );
  }
}
