import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vg_flutter_template/app/app.dart';
import 'package:vg_flutter_template/bootstrap.dart';

void main() {
  bootstrap(() => const ProviderScope(child: App()));
}
