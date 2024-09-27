enum MainPageType { home, digitalSign, document, mission, other }

extension MainPageTypeEx on MainPageType {
  int get tabValue {
    switch (this) {
      case MainPageType.home:
        return 0;
      case MainPageType.digitalSign:
        return 1;
      case MainPageType.document:
        return 2;
      case MainPageType.mission:
        return 3;
      case MainPageType.other:
        return 4;
      default:
        return 0;
    }
  }
}
