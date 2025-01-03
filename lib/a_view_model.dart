import 'package:injectable/injectable.dart';

@injectable
class AViewModel {
  final AViewModelHelper helper;

  AViewModel(this.helper);
}

@injectable
class AViewModelHelper {}
