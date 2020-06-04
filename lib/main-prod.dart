import 'package:injectable/injectable.dart';

import 'common_main.dart';

void main() async {
  String env = Environment.prod;
  commonMain(env);
}
