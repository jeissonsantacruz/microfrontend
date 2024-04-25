import 'package:mf_creci/src/domain/repositories/creci_repository.dart';

class CreciUsecase {
  CreciUsecase(this._creciReposory);

  final CreciRepository _creciReposory;

  void methodUseCase() {
    return _creciReposory.methodCreci();
  }
}
