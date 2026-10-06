import 'package:bufopia/features/home/presentation/pages/home_page.dart';
import 'package:bufopia/features/home/presentation/widgets/home_body.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/pump_app.dart';

void main() {
  group('HomePage', () {
    testWidgets('renders HomePage and HomeBody', (tester) async {
      await tester.pumpApp(const HomePage());
      await tester.pump();

      expect(find.byType(HomePage), findsOneWidget);
      expect(find.byType(HomeBody), findsOneWidget);
    });
  });
}
