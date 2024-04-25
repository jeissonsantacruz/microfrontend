import 'package:flutter/material.dart';
import 'package:mf_creci/mf_creci.dart';

import '../../infrastructure/repositories/creci/creci_repositories.dart';

class CreciRoutes {
  static CreciScreen getCreciScreen(BuildContext context) {
    final CreciConfig creciConfig = CreciConfig(CreciImpRepository());
    return CreciScreen(creciConfig);
  }
}
