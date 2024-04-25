import 'package:mf_creci/src/domain/repositories/creci_repository.dart';
import 'package:mf_creci/src/domain/usecases/creci_use_case.dart';

class CreciConfig {
  CreciConfig(CreciRepository creciRepository) {
    creciUsecase = CreciUsecase(creciRepository);
  }
  late CreciUsecase creciUsecase;
}
