import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vg_flutter_template/features/authentication/data/repository/hive_repo.dart';

final hiveRepositoryProvider =
    Provider<HiveRepository>((ref) => HiveRepository());
