enum Flavor {
  DEV,
  QA,
  PROD,
}

class F {
  static Flavor appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.DEV:
        return 'BlocHub Dev';
      case Flavor.QA:
        return 'BlocHub QA';
      case Flavor.PROD:
        return 'BlocHub';
      default:
        return 'title';
    }
  }

}
