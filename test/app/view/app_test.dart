import 'package:flutter_test/flutter_test.dart';
import 'package:vg_flutter_template/app/app.dart';
import 'package:vg_flutter_template/features/authentication/presentation/pages/login_page.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(LoginPage), findsOneWidget);
    });
  });
}
